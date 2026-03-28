# -*- coding: utf-8 -*-
import urllib.request, urllib.parse, json, os, time

missing = {
    "fish_chips": "fish and chips british food",
    "colombia": "bandeja paisa colombian food",
    "nigeria": "jollof rice african food",
    "indonesia": "nasi goreng indonesian fried rice",
    "nasi_goreng": "nasi goreng fried rice",
    "malaysia": "nasi lemak malaysian food",
    "nasi_lemak": "nasi lemak coconut rice",
    "chelo_kebab": "persian kebab rice",
    "bangladesh": "hilsa fish bengali",
    "nepal": "momo dumpling nepalese",
    "sri_lanka": "sri lankan rice curry",
    "rice_curry": "rice curry sri lankan",
    "cuba": "cuban ropa vieja",
    "ropa_vieja": "ropa vieja shredded beef",
    "jamaica": "jerk chicken jamaican",
    "jerk_chicken": "jerk chicken grill",
    "dominican": "dominican food rice",
    "la_bandera": "dominican rice beans meat",
    "uruguay": "chivito sandwich steak",
    "costa_rica": "gallo pinto rice beans",
    "gallo_pinto": "gallo pinto breakfast",
    "moules_frites": "moules frites mussels chips",
    "switzerland": "swiss fondue cheese",
    "croatia": "black risotto squid ink",
    "crni_rizot": "crni rizot black risotto",
    "azerbaijan": "azerbaijani plov pilaf",
    "plov_uz": "uzbek plov rice",
    "couscous_tn": "couscous north african",
    "jamaica2": "griot haiti fried pork",
    "taiwan": "taiwanese beef noodle soup",
    "beef_noodle": "beef noodle soup",
    "cambodia": "fish amok cambodian",
    "pastel_nata": "pastel de nata portuguese tart",
    "trinidad": "doubles trinidad chickpea",
}

PIXABAY_KEY = "47957775-71b08f49df64a5661c2e8ddef"

for cid, query in missing.items():
    imageset = f"Assets.xcassets/{cid}.imageset"
    img_path = os.path.join(imageset, f"{cid}.jpg")
    if os.path.exists(img_path) and os.path.getsize(img_path) > 5000:
        print(f"Skip {cid}")
        continue
    
    os.makedirs(imageset, exist_ok=True)
    
    try:
        url = f"https://pixabay.com/api/?key={PIXABAY_KEY}&q={urllib.parse.quote(query)}&image_type=photo&per_page=3&min_width=400"
        req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
        with urllib.request.urlopen(req, timeout=15) as res:
            data = json.loads(res.read().decode())
            if data.get('hits') and len(data['hits']) > 0:
                img_url = data['hits'][0]['webformatURL']
                ir = urllib.request.Request(img_url, headers={'User-Agent': 'Mozilla/5.0'})
                with urllib.request.urlopen(ir, timeout=15) as r, open(img_path, 'wb') as f:
                    f.write(r.read())
                contents = {"images":[{"filename":f"{cid}.jpg","idiom":"universal"}],"info":{"author":"xcode","version":1}}
                with open(os.path.join(imageset, "Contents.json"), 'w') as f:
                    json.dump(contents, f)
                print(f"Pixabay OK: {cid}")
                time.sleep(1)
                continue
    except Exception as e:
        print(f"Pixabay fail {cid}: {e}")
    
    # Fallback: try simplified query
    simple = query.split()[0]
    try:
        url2 = f"https://pixabay.com/api/?key={PIXABAY_KEY}&q={urllib.parse.quote(simple+' food')}&image_type=photo&per_page=3"
        req = urllib.request.Request(url2, headers={'User-Agent': 'Mozilla/5.0'})
        with urllib.request.urlopen(req, timeout=15) as res:
            data = json.loads(res.read().decode())
            if data.get('hits') and len(data['hits']) > 0:
                img_url = data['hits'][0]['webformatURL']
                ir = urllib.request.Request(img_url, headers={'User-Agent': 'Mozilla/5.0'})
                with urllib.request.urlopen(ir, timeout=15) as r, open(img_path, 'wb') as f:
                    f.write(r.read())
                contents = {"images":[{"filename":f"{cid}.jpg","idiom":"universal"}],"info":{"author":"xcode","version":1}}
                with open(os.path.join(imageset, "Contents.json"), 'w') as f:
                    json.dump(contents, f)
                print(f"Simple OK: {cid}")
                time.sleep(1)
                continue
    except Exception as e:
        print(f"Simple fail {cid}: {e}")
    
    print(f"FAILED: {cid}")
    time.sleep(1)

print("DONE")
