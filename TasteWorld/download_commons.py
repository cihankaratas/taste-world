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
    "bangladesh": "Ilish fish",
    "nepal": "Momo food",
    "sri_lanka": "Sri Lankan cuisine",
    "rice_curry": "Rice and curry",
    "cuba": "Ropa vieja",
    "ropa_vieja": "Ropa vieja",
    "jamaica": "Jerk chicken",
    "jerk_chicken": "Jerk chicken",
    "dominican": "Flag plate Dominican",
    "la_bandera": "Dominican flag plate",
    "uruguay": "Chivito sandwich",
    "costa_rica": "Gallo pinto",
    "gallo_pinto": "Gallo pinto",
    "moules_frites": "Moules-frites",
    "switzerland": "Cheese fondue",
    "croatia": "Black risotto",
    "crni_rizot": "Crni rizot",
    "azerbaijan": "Azerbaijani plov",
    "plov_uz": "Uzbek plov",
    "couscous_tn": "Couscous",
    "jamaica2": "Griot pork",
    "taiwan": "Beef noodle soup",
    "beef_noodle": "Beef noodle soup",
    "cambodia": "Fish amok",
    "pastel_nata": "Pastel de nata",
    "trinidad": "Doubles food",
}

# Use Wikimedia Commons API (separate from Wikipedia, different rate limits)
headers = {'User-Agent': 'TasteWorldEducational/1.0 (https://example.com; food@example.com) python-urllib/3.9'}

for cid, term in missing.items():
    imageset = f"Assets.xcassets/{cid}.imageset"
    img_path = os.path.join(imageset, f"{cid}.jpg")
    if os.path.exists(img_path) and os.path.getsize(img_path) > 5000:
        print(f"Skip {cid}")
        continue
    
    os.makedirs(imageset, exist_ok=True)
    
    try:
        # Use Wikimedia Commons search
        api = f"https://commons.wikimedia.org/w/api.php?action=query&generator=search&gsrsearch={urllib.parse.quote(term)}&gsrnamespace=6&prop=imageinfo&iiprop=url&iiurlwidth=800&format=json"
        req = urllib.request.Request(api, headers=headers)
        with urllib.request.urlopen(req, timeout=20) as res:
            data = json.loads(res.read().decode())
            if 'query' in data and 'pages' in data['query']:
                for page in data['query']['pages'].values():
                    if 'imageinfo' in page and page['imageinfo']:
                        info = page['imageinfo'][0]
                        if 'thumburl' in info:
                            img_url = info['thumburl']
                        elif 'url' in info:
                            img_url = info['url']
                        else:
                            continue
                        ir = urllib.request.Request(img_url, headers=headers)
                        with urllib.request.urlopen(ir, timeout=20) as r:
                            img_data = r.read()
                        if len(img_data) > 5000:
                            with open(img_path, 'wb') as f:
                                f.write(img_data)
                            contents = {"images":[{"filename":f"{cid}.jpg","idiom":"universal"}],"info":{"author":"xcode","version":1}}
                            with open(os.path.join(imageset, "Contents.json"), 'w') as f:
                                json.dump(contents, f)
                            print(f"Commons OK: {cid} ({len(img_data)} bytes)")
                            break
                else:
                    print(f"No good image: {cid}")
            else:
                print(f"No results: {cid}")
    except Exception as e:
        print(f"FAIL {cid}: {e}")
    
    time.sleep(3)  # Longer delay to be polite

print("DONE")
