import urllib.request
import urllib.parse
import json
import os
import time

dishes = {
    "turkey": "Adana kebabı",
    "italy": "Neapolitan pizza",
    "japan": "Sushi",
    "france": "Croissant",
    "mexico": "Al pastor",
    "india": "Butter chicken",
    "spain": "Paella",
    "greece": "Moussaka",
    "usa": "Hamburger",
    "china": "Peking duck",
    "thailand": "Pad thai",
    "brazil": "Feijoada",
    "morocco": "Tajine",
    "argentina": "Asado",
    "south_korea": "Bibimbap",
    "peru": "Ceviche",
    "germany": "Bratwurst",
    "portugal": "Bacalhau",
    "vietnam": "Pho",
    "lebanon": "Hummus",
    "united_kingdom": "Fish and chips",
    "egypt": "Koshary",
    "canada": "Poutine"
}

os.makedirs("Assets.xcassets", exist_ok=True)

for key, title in dishes.items():
    imageset_path = f"Assets.xcassets/{key}.imageset"
    os.makedirs(imageset_path, exist_ok=True)
    img_path = os.path.join(imageset_path, f"{key}.jpg")
    
    # If already downloaded and valid size, skip
    if os.path.exists(img_path) and os.path.getsize(img_path) > 10000:
        print(f"Already have {key}")
        continue
        
    api_url = f"https://en.wikipedia.org/w/api.php?action=query&titles={urllib.parse.quote(title)}&prop=pageimages&format=json&pithumbsize=1000"
    success = False
    
    try:
        req = urllib.request.Request(api_url, headers={'User-Agent': 'TasteWorldContact/3.0 (test@test.com)'})
        with urllib.request.urlopen(req) as response:
            data = json.loads(response.read().decode('utf-8'))
            pages = data['query']['pages']
            page = list(pages.values())[0]
            if 'thumbnail' in page:
                image_url = page['thumbnail']['source']
                
                img_req = urllib.request.Request(image_url, headers={'User-Agent': 'TasteWorldContact/3.0'})
                with urllib.request.urlopen(img_req) as img_res, open(img_path, 'wb') as f:
                    f.write(img_res.read())
                
                success = True
                print(f"Success Wiki: {key}")
            else:
                print(f"No Wiki image for {title}")
    except Exception as e:
        print(f"Wiki Error {key}: {e}")
        
    if not success:
        # Fallback to loremflickr
        print(f"Fallback loremflickr for {key}")
        fallback_url = f"https://loremflickr.com/800/600/{key},food/all"
        try:
            req = urllib.request.Request(fallback_url, headers={'User-Agent': 'Mozilla/5.0'})
            with urllib.request.urlopen(req) as res, open(img_path, 'wb') as f:
                f.write(res.read())
            success = True
            print(f"Success Fallback: {key}")
        except Exception as e:
            print(f"Fallback Error {key}: {e}")

    if success:
        contents = {"images": [{"filename": f"{key}.jpg", "idiom": "universal"}], "info": {"author": "xcode", "version": 1}}
        with open(os.path.join(imageset_path, "Contents.json"), 'w') as f:
            json.dump(contents, f)
            
    time.sleep(2.0)
