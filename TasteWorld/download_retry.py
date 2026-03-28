# -*- coding: utf-8 -*-
import urllib.request, urllib.parse, json, os, time

missing = [
    ("fish_chips", "Fish and chips"),
    ("colombia", "Bandeja paisa"),
    ("nigeria", "Jollof rice"),
    ("indonesia", "Nasi goreng"),
    ("nasi_goreng", "Nasi goreng"),
    ("malaysia", "Nasi lemak"),
    ("nasi_lemak", "Nasi lemak"),
    ("chelo_kebab", "Chelow kabab"),
    ("bangladesh", "Ilish"),
    ("nepal", "Momo (food)"),
    ("sri_lanka", "Sri Lankan cuisine"),
    ("rice_curry", "Rice and curry"),
    ("cuba", "Ropa vieja"),
    ("ropa_vieja", "Ropa vieja"),
    ("jamaica", "Jerk chicken"),
    ("jerk_chicken", "Jerk (cooking)"),
    ("dominican", "Flag of convenience meal"),
    ("la_bandera", "Dominican cuisine"),
    ("uruguay", "Chivito (sandwich)"),
    ("costa_rica", "Gallo pinto"),
    ("gallo_pinto", "Gallo pinto"),
    ("moules_frites", "Moules-frites"),
    ("switzerland", "Fondue"),
    ("croatia", "Black risotto"),
    ("crni_rizot", "Crni rizot"),
    ("azerbaijan", "Azerbaijani cuisine"),
    ("plov_uz", "Plov"),
    ("couscous_tn", "Couscous"),
    ("jamaica2", "Griot"),
    ("taiwan", "Beef noodle soup"),
    ("beef_noodle", "Beef noodle soup"),
    ("cambodia", "Amok (food)"),
    ("pastel_nata", "Pastel de nata"),
    ("trinidad", "Doubles (food)"),
]

# Polite User-Agent as per Wikimedia policy
UA = 'TasteWorldApp/1.0 (https://tasteworld.app; tasteworld@gmail.com) python-urllib/3.9'

ok = 0
fail = 0
for cid, term in missing:
    imageset = f"Assets.xcassets/{cid}.imageset"
    img_path = os.path.join(imageset, f"{cid}.jpg")
    if os.path.exists(img_path) and os.path.getsize(img_path) > 5000:
        print(f"Skip {cid}")
        ok += 1
        continue
    os.makedirs(imageset, exist_ok=True)
    
    try:
        api = f"https://en.wikipedia.org/w/api.php?action=query&titles={urllib.parse.quote(term)}&prop=pageimages&format=json&pithumbsize=800"
        req = urllib.request.Request(api, headers={'User-Agent': UA})
        with urllib.request.urlopen(req, timeout=20) as res:
            data = json.loads(res.read().decode())
            page = list(data['query']['pages'].values())[0]
            if 'thumbnail' in page:
                img_url = page['thumbnail']['source']
                ir = urllib.request.Request(img_url, headers={'User-Agent': UA})
                with urllib.request.urlopen(ir, timeout=20) as r:
                    img_data = r.read()
                with open(img_path, 'wb') as f:
                    f.write(img_data)
                contents = {"images":[{"filename":f"{cid}.jpg","idiom":"universal"}],"info":{"author":"xcode","version":1}}
                with open(os.path.join(imageset, "Contents.json"), 'w') as f:
                    json.dump(contents, f)
                print(f"OK: {cid} ({len(img_data)}b)")
                ok += 1
            else:
                print(f"No thumb: {cid}")
                fail += 1
    except Exception as e:
        print(f"FAIL {cid}: {e}")
        fail += 1
    
    time.sleep(5)

print(f"\nDONE: {ok} ok, {fail} failed")
