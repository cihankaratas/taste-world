import os
import json
import re
import urllib.request
import urllib.parse

def get_flag_emoji(iso):
    return "".join(chr(127397 + ord(c)) for c in iso.upper())

def fetch_wiki_image(country_name):
    query = urllib.parse.quote(f"{country_name} cuisine")
    url = f"https://en.wikipedia.org/w/api.php?action=query&generator=search&gsrsearch={query}&gsrlimit=1&prop=pageimages&pithumbsize=600&format=json"
    try:
        req = urllib.request.Request(url, headers={'User-Agent': 'TasteWorldBot/1.0'})
        with urllib.request.urlopen(req) as resp:
            data = json.loads(resp.read().decode('utf-8'))
            pages = data.get('query', {}).get('pages', {})
            for pid, pdata in pages.items():
                if 'thumbnail' in pdata:
                    return pdata['thumbnail']['source']
    except Exception as e:
        pass
    return ""

def main():
    print("Reading boundaries...")
    with open("generate_country_boundaries.py", "r", encoding="utf-8") as f:
        gb_content = f.read()

    existing_isos = set(re.findall(r'"iso":\s*"([^"]+)"', gb_content))
    
    with open("/tmp/ne_110m_countries.geojson", 'r') as f:
        geojson = json.load(f)
    
    features = geojson.get("features", [])
    missing = []
    for feat in features:
        props = feat.get("properties", {})
        iso = props.get("ISO_A2", "")
        if iso == "-99": iso = props.get("WB_A2", "")
        name = props.get("ADMIN", "")
        if iso and iso != "-99" and name and iso not in existing_isos:
            app_id = name.lower().replace(" ", "_").replace("-", "_").replace("'", "")
            app_id = re.sub(r'[^a-z_]', '', app_id)
            if app_id in ["turkey", "italy", "japan"]: continue # skip hardcoded dupes
            missing.append({"iso": iso, "name": name, "id": app_id})

    print(f"Found {len(missing)} missing countries. Processing...")
    
    new_map_entries = []
    new_swift_entries = []
    
    for c in missing:
        cid = c["id"]
        iso = c["iso"].upper()
        name = c["name"]
        print(f"Adding {name}...")
        
        # 1. Map entry
        entry = f'    "{cid}": {{"iso": "{iso}", "names": ["{name}"]}},\n'
        new_map_entries.append(entry)
        
        # 2. Swift Data
        flag = get_flag_emoji(iso)
        img_url = fetch_wiki_image(name)
        if not img_url:
            img_url = f"https://flagcdn.com/w640/{iso.lower()}.png" # Fallback to HD flag
            
        swift = f"""    Country(
        id: "{cid}",
        name: "{name}",
        flag: "{flag}",
        latitude: 0.0,
        longitude: 0.0,
        famousDish: Dish(
            id: "{cid}_dish",
            name: "Traditional {name} Dish",
            imageURL: "{img_url}",
            description: "A famous and delicious traditional meal from {name}.",
            ingredients: ["Fresh local vegetables", "Aromatic local spices", "Traditional cooking oil", "Locally sourced protein/grains"],
            steps: [
                "Prepare the fresh local ingredients.",
                "Sauté the spices in oil to release their aroma.",
                "Combine all ingredients and cook according to traditional {name} methods.",
                "Serve hot and enjoy the authentic taste of {name}."
            ]
        )
    ),"""
        new_swift_entries.append(swift)

    # Inject into Python map
    match = re.search(r'(COUNTRY_ID_MAP = \{.*?\n)', gb_content, re.DOTALL)
    if match:
        insert_pos = match.end()
        new_gb = gb_content[:insert_pos] + "".join(new_map_entries) + gb_content[insert_pos:]
        with open("generate_country_boundaries.py", "w", encoding="utf-8") as f:
            f.write(new_gb)
    else:
        print("Could not find COUNTRY_ID_MAP in generate_country_boundaries.py")

    # Inject into Swift Data
    swift_path = "Models/CountryData.swift"
    with open(swift_path, "r", encoding="utf-8") as f:
        swift_content = f.read()
    
    # Find last ] of allCountries
    # We look for the declaration
    lines = swift_content.split('\n')
    for i in reversed(range(len(lines))):
        if lines[i].strip() == "]" and "let allCountries" not in lines[i]:
            # Found end of array
            lines.insert(i, "\n".join(new_swift_entries))
            break
            
    with open(swift_path, "w", encoding="utf-8") as f:
        f.write("\n".join(lines))

    print("Success! Data injected.")

if __name__ == "__main__":
    main()
