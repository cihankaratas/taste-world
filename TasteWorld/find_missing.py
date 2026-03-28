import os
import json
import urllib.request
import re

# Read current map manually so we don't have to import safely
with open("generate_country_boundaries.py", "r", encoding="utf-8") as f:
    gb_content = f.read()

# Extract COUNTRY_ID_MAP
match = re.search(r'COUNTRY_ID_MAP = \{(.*?)\}', gb_content, re.DOTALL)
current_map_text = match.group(1)
existing_isos = []
for line in current_map_text.split('\n'):
    iso_match = re.search(r'"iso":\s*"([A-Z]{2})"', line)
    if iso_match:
        existing_isos.append(iso_match.group(1))

print(f"Found {len(existing_isos)} existing ISOs.")

cache_path = "/tmp/ne_110m_countries.geojson"
with open(cache_path, 'r') as f:
    geojson = json.load(f)

features = geojson.get("features", [])
all_countries = []
for feat in features:
    props = feat.get("properties", {})
    iso = props.get("ISO_A2")
    if iso == "-99": iso = props.get("WB_A2") # Some missing isos
    name = props.get("ADMIN")
    if iso and iso != "-99" and name:
        all_countries.append({"iso": iso, "name": name})

missing = [c for c in all_countries if c["iso"] not in existing_isos]
print(f"Found {len(missing)} missing countries.")
for m in missing[:10]:
    print(m)

# Write missing to a json file for further processing
with open("missing_countries.json", "w", encoding="utf-8") as f:
    json.dump(missing, f, indent=2, ensure_ascii=False)
