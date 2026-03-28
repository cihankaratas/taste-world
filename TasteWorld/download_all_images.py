#!/usr/bin/env python3
import urllib.request, urllib.parse, json, os, time, re

# Read country IDs from the generated Swift file
ids = []
with open("Models/CountryData.swift") as f:
    for line in f:
        m = re.search(r'id: "(\w+)"', line)
        if m:
            ids.append(m.group(1))

print(f"Found {len(ids)} country IDs")

# Map country IDs to Wikipedia search terms for food images
search_terms = {
    "turkey":"Adana kebabı","italy":"Neapolitan pizza","japan":"Sushi","france":"Croissant",
    "mexico":"Al pastor","india":"Butter chicken","spain":"Paella","greece":"Moussaka",
    "usa":"Hamburger","china":"Peking duck","thailand":"Pad thai","brazil":"Feijoada",
    "morocco":"Tajine","argentina":"Asado","south_korea":"Bibimbap","peru":"Ceviche",
    "germany":"Bratwurst","portugal":"Bacalhau","vietnam":"Pho","lebanon":"Hummus",
    "united_kingdom":"Fish and chips","egypt":"Koshary","canada":"Poutine",
    "russia":"Borscht","australia":"Meat pie","sweden":"Köttbullar","ethiopia":"Injera",
    "colombia":"Bandeja paisa","nigeria":"Jollof rice","south_africa":"Bobotie",
    "indonesia":"Nasi goreng","malaysia":"Nasi lemak","philippines":"Adobo",
    "iran":"Chelow kabab","pakistan":"Biryani","bangladesh":"Shorshe ilish",
    "nepal":"Momo dumpling","sri_lanka":"Sri Lankan rice and curry","myanmar":"Mohinga",
    "cuba":"Ropa vieja","jamaica":"Jerk chicken","dominican":"Dominican food",
    "venezuela":"Arepa","chile":"Empanada","ecuador":"Encebollado",
    "bolivia":"Salteña","uruguay":"Chivito sandwich","paraguay":"Sopa paraguaya",
    "costa_rica":"Gallo pinto","panama":"Sancocho","iceland":"Plokkfiskur",
    "ireland":"Irish stew","netherlands":"Stamppot","belgium":"Moules-frites",
    "switzerland":"Cheese fondue","austria":"Wiener schnitzel","poland":"Pierogi",
    "czech":"Svíčková","hungary":"Goulash","romania":"Sarmale",
    "bulgaria":"Shopska salad","serbia":"Ćevapi","croatia":"Crni rižot",
    "bosnia":"Burek","albania":"Tavë kosi","georgia_country":"Khachapuri",
    "armenia":"Lahmacun","azerbaijan":"Azerbaijani plov","uzbekistan":"Uzbek plov",
    "kazakhstan":"Beshbarmak","mongolia":"Buuz","saudi":"Kabsa",
    "uae":"Machboos","jordan":"Mansaf","iraq":"Masgouf","syria":"Kibbeh",
    "israel":"Falafel","tunisia":"Couscous","algeria":"Chakhchoukha",
    "ghana":"Fufu","senegal":"Thiéboudienne","kenya":"Nyama choma",
    "tanzania":"Ugali","morocco2":"Romazava","new_zealand":"Hangi",
    "fiji":"Kokoda","jamaica2":"Griot Haiti","denmark":"Smørrebrød",
    "norway":"Rakfisk","finland":"Kalakukko","singapore":"Laksa",
    "taiwan":"Taiwanese beef noodle soup","hong_kong":"Dim sum",
    "cambodia":"Fish amok","laos":"Larb","portugal2":"Pastel de nata",
    "scotland":"Haggis","wales":"Cawl","trinidad":"Doubles Trinidad",
    "Cuba2":"Pepián","honduras":"Baleada",
}

for cid in ids:
    imageset = f"Assets.xcassets/{cid}.imageset"
    img_path = os.path.join(imageset, f"{cid}.jpg")
    if os.path.exists(img_path) and os.path.getsize(img_path) > 5000:
        print(f"Skip {cid}")
        continue

    os.makedirs(imageset, exist_ok=True)
    term = search_terms.get(cid, cid.replace("_"," "))
    
    try:
        api = f"https://en.wikipedia.org/w/api.php?action=query&titles={urllib.parse.quote(term)}&prop=pageimages&format=json&pithumbsize=800"
        req = urllib.request.Request(api, headers={'User-Agent': 'TasteWorldBot/4.0 (contact@test.com)'})
        with urllib.request.urlopen(req, timeout=10) as res:
            data = json.loads(res.read().decode())
            page = list(data['query']['pages'].values())[0]
            if 'thumbnail' in page:
                img_url = page['thumbnail']['source']
                ir = urllib.request.Request(img_url, headers={'User-Agent': 'TasteWorldBot/4.0'})
                with urllib.request.urlopen(ir, timeout=10) as r, open(img_path, 'wb') as f:
                    f.write(r.read())
                print(f"Wiki OK: {cid}")
                contents = {"images":[{"filename":f"{cid}.jpg","idiom":"universal"}],"info":{"author":"xcode","version":1}}
                with open(os.path.join(imageset, "Contents.json"), 'w') as f:
                    json.dump(contents, f)
                time.sleep(1.5)
                continue
    except Exception as e:
        print(f"Wiki fail {cid}: {e}")

    # Fallback
    try:
        fb = f"https://loremflickr.com/600/400/{urllib.parse.quote(term)},food/all"
        ir = urllib.request.Request(fb, headers={'User-Agent': 'Mozilla/5.0'})
        with urllib.request.urlopen(ir, timeout=10) as r, open(img_path, 'wb') as f:
            f.write(r.read())
        contents = {"images":[{"filename":f"{cid}.jpg","idiom":"universal"}],"info":{"author":"xcode","version":1}}
        with open(os.path.join(imageset, "Contents.json"), 'w') as f:
            json.dump(contents, f)
        print(f"Fallback OK: {cid}")
    except Exception as e:
        print(f"ALL FAIL {cid}: {e}")
    
    time.sleep(1.5)

print("DONE")
