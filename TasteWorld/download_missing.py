# -*- coding: utf-8 -*-
import urllib.request, urllib.parse, json, os, time

missing = {
    "fish_chips": "Fish and chips",
    "colombia": "Bandeja paisa",
    "nigeria": "Jollof rice",
    "indonesia": "Nasi goreng",
    "nasi_goreng": "Nasi goreng",
    "malaysia": "Nasi lemak",
    "nasi_lemak": "Nasi lemak",
    "chelo_kebab": "Chelow kabab",
    "bangladesh": "Ilish",
    "nepal": "Momo (food)",
    "sri_lanka": "Sri Lankan cuisine",
    "rice_curry": "Sri Lankan rice and curry",
    "cuba": "Ropa vieja",
    "ropa_vieja": "Ropa vieja",
    "jamaica": "Jerk chicken",
    "jerk_chicken": "Jerk chicken",
    "dominican": "Dominican cuisine",
    "la_bandera": "La Bandera Dominicana",
    "uruguay": "Chivito (sandwich)",
    "costa_rica": "Gallo pinto",
    "gallo_pinto": "Gallo pinto",
    "moules_frites": "Moules-frites",
    "switzerland": "Fondue",
    "croatia": "Crni rižot",
    "crni_rizot": "Crni rižot",
    "azerbaijan": "Azerbaijani cuisine",
    "plov_uz": "Plov",
    "couscous_tn": "Couscous",
    "jamaica2": "Griot",
    "taiwan": "Beef noodle soup",
    "beef_noodle": "Taiwanese beef noodle soup",
    "cambodia": "Fish amok",
    "pastel_nata": "Pastel de nata",
    "trinidad": "Doubles (food)",
}

headers = {'User-Agent': 'TasteWorldApp/5.0 (educational; contact@example.com)'}

for cid, term in missing.items():
    imageset = f"Assets.xcassets/{cid}.imageset"
    img_path = os.path.join(imageset, f"{cid}.jpg")
    if os.path.exists(img_path) and os.path.getsize(img_path) > 5000:
        print(f"Skip {cid}")
        continue
    
    os.makedirs(imageset, exist_ok=True)
    
    # Try Wikipedia
    try:
        api = f"https://en.wikipedia.org/w/api.php?action=query&titles={urllib.parse.quote(term)}&prop=pageimages&format=json&pithumbsize=800"
        req = urllib.request.Request(api, headers=headers)
        with urllib.request.urlopen(req, timeout=15) as res:
            data = json.loads(res.read().decode())
            page = list(data['query']['pages'].values())[0]
            if 'thumbnail' in page:
                img_url = page['thumbnail']['source']
                ir = urllib.request.Request(img_url, headers=headers)
                with urllib.request.urlopen(ir, timeout=15) as r, open(img_path, 'wb') as f:
                    f.write(r.read())
                contents = {"images":[{"filename":f"{cid}.jpg","idiom":"universal"}],"info":{"author":"xcode","version":1}}
                with open(os.path.join(imageset, "Contents.json"), 'w') as f:
                    json.dump(contents, f)
                print(f"OK: {cid} ({term})")
                time.sleep(2)
                continue
    except Exception as e:
        print(f"Wiki fail {cid}: {e}")
    
    # Try with different search term
    alt_terms = {
        "fish_chips": "Fish and chips British",
        "colombia": "Colombian food bandeja",
        "dominican": "Dominican rice beans",
        "la_bandera": "Rice beans meat Dominican",
        "uruguay": "Chivito Uruguay sandwich",
        "switzerland": "Swiss cheese fondue",
        "jamaica2": "Griot Haiti pork",
        "taiwan": "Taiwanese beef noodle",
        "beef_noodle": "Beef noodle soup Taiwan",
        "trinidad": "Doubles Trinidad food",
        "cambodia": "Amok Cambodia fish",
    }
    alt = alt_terms.get(cid, term)
    try:
        api2 = f"https://en.wikipedia.org/w/api.php?action=query&list=search&srsearch={urllib.parse.quote(alt)}&format=json"
        req = urllib.request.Request(api2, headers=headers)
        with urllib.request.urlopen(req, timeout=15) as res:
            data = json.loads(res.read().decode())
            if data['query']['search']:
                title = data['query']['search'][0]['title']
                api3 = f"https://en.wikipedia.org/w/api.php?action=query&titles={urllib.parse.quote(title)}&prop=pageimages&format=json&pithumbsize=800"
                req2 = urllib.request.Request(api3, headers=headers)
                with urllib.request.urlopen(req2, timeout=15) as res2:
                    data2 = json.loads(res2.read().decode())
                    page2 = list(data2['query']['pages'].values())[0]
                    if 'thumbnail' in page2:
                        img_url = page2['thumbnail']['source']
                        ir = urllib.request.Request(img_url, headers=headers)
                        with urllib.request.urlopen(ir, timeout=15) as r, open(img_path, 'wb') as f:
                            f.write(r.read())
                        contents = {"images":[{"filename":f"{cid}.jpg","idiom":"universal"}],"info":{"author":"xcode","version":1}}
                        with open(os.path.join(imageset, "Contents.json"), 'w') as f:
                            json.dump(contents, f)
                        print(f"Search OK: {cid}")
                        time.sleep(2)
                        continue
    except Exception as e:
        print(f"Search fail {cid}: {e}")
    
    print(f"FAILED: {cid}")
    time.sleep(2)

print("DONE")
