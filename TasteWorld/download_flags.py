#!/usr/import env python3
import os
import json
import urllib.request
import ssl

import re

COUNTRY_ID_MAP = {}
with open("generate_country_boundaries.py", "r", encoding="utf-8") as f:
    gb_content = f.read()

# Extract all lines with iso definitions
matches = re.finditer(r'"([^"]+)"\s*:\s*\{.*?["\']iso["\']\s*:\s*["\']([^"\']+)["\']', gb_content)
for m in matches:
    COUNTRY_ID_MAP[m.group(1)] = {"iso": m.group(2)}

def main():
    assets_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), "Assets.xcassets")
    os.makedirs(assets_dir, exist_ok=True)
    
    ssl._create_default_https_context = ssl._create_unverified_context
    
    for app_id, info in COUNTRY_ID_MAP.items():
        iso = info["iso"].lower()
        url = f"https://flagcdn.com/w640/{iso}.png"
        
        # Override for specific regions
        if app_id == "scotland": url = "https://flagcdn.com/w640/gb-sct.png"
        elif app_id == "wales": url = "https://flagcdn.com/w640/gb-wls.png"
        
        imageset_dir = os.path.join(assets_dir, f"{app_id}_flag.imageset")
        os.makedirs(imageset_dir, exist_ok=True)
        
        png_path = os.path.join(imageset_dir, f"{app_id}_flag.png")
        
        if not os.path.exists(png_path):
            try:
                req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
                with urllib.request.urlopen(req) as response, open(png_path, 'wb') as out_file:
                    out_file.write(response.read())
                print(f"Downloaded {app_id} flag ({iso})")
            except Exception as e:
                print(f"Failed to download {app_id}: {e}")
        
        contents = {
          "images" : [
            {
              "filename" : f"{app_id}_flag.png",
              "idiom" : "universal",
              "scale" : "1x"
            }
          ],
          "info" : {
            "author" : "xcode",
            "version" : 1
          }
        }
        with open(os.path.join(imageset_dir, "Contents.json"), "w") as f:
            json.dump(contents, f, indent=2)

if __name__ == "__main__":
    main()
