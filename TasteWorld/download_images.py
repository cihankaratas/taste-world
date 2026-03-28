import urllib.request
import os
import json

dishes = {
    "turkey": "https://upload.wikimedia.org/wikipedia/commons/4/4b/Adana_kebab.jpg",
    "italy": "https://upload.wikimedia.org/wikipedia/commons/a/a3/Eq_it-na_pizza-margherita_sep2005_sml.jpg",
    "japan": "https://upload.wikimedia.org/wikipedia/commons/9/93/Edomae_Nigiri_Sushi.jpg",
    "france": "https://upload.wikimedia.org/wikipedia/commons/f/f6/Croissant_%281%29.jpg",
    "mexico": "https://upload.wikimedia.org/wikipedia/commons/7/73/Tacos_al_pastor.jpg",
    "india": "https://upload.wikimedia.org/wikipedia/commons/3/3c/Chicken_makhani_1.jpg",
    "spain": "https://upload.wikimedia.org/wikipedia/commons/e/e4/Paella_de_marisco_01.jpg",
    "greece": "https://upload.wikimedia.org/wikipedia/commons/3/36/Moussaka.jpg",
    "usa": "https://upload.wikimedia.org/wikipedia/commons/4/47/Hamburger_%28black_bg%29.jpg",
    "china": "https://upload.wikimedia.org/wikipedia/commons/0/09/Peking_duck_at_Da_Dong_%281%29.jpg",
    "thailand": "https://upload.wikimedia.org/wikipedia/commons/3/39/Pad_Thai_2.jpg",
    "brazil": "https://upload.wikimedia.org/wikipedia/commons/6/6f/Feijoada_%281%29.jpg",
    "morocco": "https://upload.wikimedia.org/wikipedia/commons/8/82/Tajine.jpg",
    "argentina": "https://upload.wikimedia.org/wikipedia/commons/b/b2/Asado_de_tira.jpg",
    "south_korea": "https://upload.wikimedia.org/wikipedia/commons/4/44/Dolsot-bibimbap.jpg",
    "peru": "https://upload.wikimedia.org/wikipedia/commons/5/58/Ceviche_de_pescado.jpg",
    "germany": "https://upload.wikimedia.org/wikipedia/commons/3/35/Th%C3%BCringer_Bratwurst.jpg",
    "portugal": "https://upload.wikimedia.org/wikipedia/commons/0/08/Bacalhau_a_Bras.jpg",
    "vietnam": "https://upload.wikimedia.org/wikipedia/commons/5/53/Pho-Beef-Noodles-2008.jpg",
    "lebanon": "https://upload.wikimedia.org/wikipedia/commons/2/2f/Hummus_with_pine_nuts.jpg",
    "united_kingdom": "https://upload.wikimedia.org/wikipedia/commons/4/44/Fish_and_Chips.jpg",
    "egypt": "https://upload.wikimedia.org/wikipedia/commons/e/e0/Koshary_with_fried_onions.jpg",
    "canada": "https://upload.wikimedia.org/wikipedia/commons/c/c5/Poutine_Montr%C3%A9al.jpg"
}

assets_dir = "Assets.xcassets"

req_headers = {'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)'}

for name, url in dishes.items():
    imageset_path = os.path.join(assets_dir, f"{name}.imageset")
    os.makedirs(imageset_path, exist_ok=True)
    
    img_filename = f"{name}.jpg"
    img_path = os.path.join(imageset_path, img_filename)
    
    try:
        req = urllib.request.Request(url, headers=req_headers)
        with urllib.request.urlopen(req) as response, open(img_path, 'wb') as out_file:
            data = response.read()
            out_file.write(data)
        
        contents = {
            "images": [
                {
                    "filename": img_filename,
                    "idiom": "universal"
                }
            ],
            "info": {
                "author": "xcode",
                "version": 1
            }
        }
        with open(os.path.join(imageset_path, "Contents.json"), 'w') as f:
            json.dump(contents, f, indent=2)
            
        print(f"Downloaded {name}")
    except Exception as e:
        print(f"Failed {name}: {e}")

