#!/usr/bin/env python3
"""
Generate CountryBoundaries.swift from Natural Earth 110m GeoJSON.
Downloads simplified country boundary data and outputs Swift code.
"""

import json
import urllib.request
import os

# Natural Earth 110m countries GeoJSON (very simplified, ideal for globe view)
GEOJSON_URL = "https://raw.githubusercontent.com/nvkelso/natural-earth-vector/master/geojson/ne_110m_admin_0_countries.geojson"

# Mapping from app country IDs to Natural Earth ISO_A2 / NAME fields
# Some entries have multiple possible matches
COUNTRY_ID_MAP = {
    "western_sahara": {"iso": "EH", "names": ["Western Sahara"]},
    "papua_new_guinea": {"iso": "PG", "names": ["Papua New Guinea"]},
    "democratic_republic_of_the_congo": {"iso": "CD", "names": ["Democratic Republic of the Congo"]},
    "somalia": {"iso": "SO", "names": ["Somalia"]},
    "sudan": {"iso": "SD", "names": ["Sudan"]},
    "chad": {"iso": "TD", "names": ["Chad"]},
    "the_bahamas": {"iso": "BS", "names": ["The Bahamas"]},
    "falkland_islands": {"iso": "FK", "names": ["Falkland Islands"]},
    "greenland": {"iso": "GL", "names": ["Greenland"]},
    "french_southern_and_antarctic_lands": {"iso": "TF", "names": ["French Southern and Antarctic Lands"]},
    "east_timor": {"iso": "TL", "names": ["East Timor"]},
    "lesotho": {"iso": "LS", "names": ["Lesotho"]},
    "nicaragua": {"iso": "NI", "names": ["Nicaragua"]},
    "el_salvador": {"iso": "SV", "names": ["El Salvador"]},
    "belize": {"iso": "BZ", "names": ["Belize"]},
    "guyana": {"iso": "GY", "names": ["Guyana"]},
    "suriname": {"iso": "SR", "names": ["Suriname"]},
    "puerto_rico": {"iso": "PR", "names": ["Puerto Rico"]},
    "zimbabwe": {"iso": "ZW", "names": ["Zimbabwe"]},
    "botswana": {"iso": "BW", "names": ["Botswana"]},
    "namibia": {"iso": "NA", "names": ["Namibia"]},
    "mali": {"iso": "ML", "names": ["Mali"]},
    "mauritania": {"iso": "MR", "names": ["Mauritania"]},
    "benin": {"iso": "BJ", "names": ["Benin"]},
    "niger": {"iso": "NE", "names": ["Niger"]},
    "cameroon": {"iso": "CM", "names": ["Cameroon"]},
    "togo": {"iso": "TG", "names": ["Togo"]},
    "ivory_coast": {"iso": "CI", "names": ["Ivory Coast"]},
    "guinea": {"iso": "GN", "names": ["Guinea"]},
    "guinea_bissau": {"iso": "GW", "names": ["Guinea-Bissau"]},
    "liberia": {"iso": "LR", "names": ["Liberia"]},
    "sierra_leone": {"iso": "SL", "names": ["Sierra Leone"]},
    "burkina_faso": {"iso": "BF", "names": ["Burkina Faso"]},
    "central_african_republic": {"iso": "CF", "names": ["Central African Republic"]},
    "republic_of_the_congo": {"iso": "CG", "names": ["Republic of the Congo"]},
    "gabon": {"iso": "GA", "names": ["Gabon"]},
    "equatorial_guinea": {"iso": "GQ", "names": ["Equatorial Guinea"]},
    "zambia": {"iso": "ZM", "names": ["Zambia"]},
    "malawi": {"iso": "MW", "names": ["Malawi"]},
    "mozambique": {"iso": "MZ", "names": ["Mozambique"]},
    "eswatini": {"iso": "SZ", "names": ["eSwatini"]},
    "angola": {"iso": "AO", "names": ["Angola"]},
    "burundi": {"iso": "BI", "names": ["Burundi"]},
    "palestine": {"iso": "PS", "names": ["Palestine"]},
    "gambia": {"iso": "GM", "names": ["Gambia"]},
    "qatar": {"iso": "QA", "names": ["Qatar"]},
    "kuwait": {"iso": "KW", "names": ["Kuwait"]},
    "oman": {"iso": "OM", "names": ["Oman"]},
    "vanuatu": {"iso": "VU", "names": ["Vanuatu"]},
    "north_korea": {"iso": "KP", "names": ["North Korea"]},
    "bhutan": {"iso": "BT", "names": ["Bhutan"]},
    "afghanistan": {"iso": "AF", "names": ["Afghanistan"]},
    "tajikistan": {"iso": "TJ", "names": ["Tajikistan"]},
    "kyrgyzstan": {"iso": "KG", "names": ["Kyrgyzstan"]},
    "turkmenistan": {"iso": "TM", "names": ["Turkmenistan"]},
    "belarus": {"iso": "BY", "names": ["Belarus"]},
    "ukraine": {"iso": "UA", "names": ["Ukraine"]},
    "moldova": {"iso": "MD", "names": ["Moldova"]},
    "lithuania": {"iso": "LT", "names": ["Lithuania"]},
    "latvia": {"iso": "LV", "names": ["Latvia"]},
    "estonia": {"iso": "EE", "names": ["Estonia"]},
    "luxembourg": {"iso": "LU", "names": ["Luxembourg"]},
    "new_caledonia": {"iso": "NC", "names": ["New Caledonia"]},
    "solomon_islands": {"iso": "SB", "names": ["Solomon Islands"]},
    "taiwan": {"iso": "CN-TW", "names": ["Taiwan"]},
    "brunei": {"iso": "BN", "names": ["Brunei"]},
    "slovenia": {"iso": "SI", "names": ["Slovenia"]},
    "slovakia": {"iso": "SK", "names": ["Slovakia"]},
    "eritrea": {"iso": "ER", "names": ["Eritrea"]},
    "yemen": {"iso": "YE", "names": ["Yemen"]},
    "antarctica": {"iso": "AQ", "names": ["Antarctica"]},
    "cyprus": {"iso": "CY", "names": ["Cyprus"]},
    "libya": {"iso": "LY", "names": ["Libya"]},
    "djibouti": {"iso": "DJ", "names": ["Djibouti"]},
    "uganda": {"iso": "UG", "names": ["Uganda"]},
    "rwanda": {"iso": "RW", "names": ["Rwanda"]},
    "north_macedonia": {"iso": "MK", "names": ["North Macedonia"]},
    "montenegro": {"iso": "ME", "names": ["Montenegro"]},
    "kosovo": {"iso": "KV", "names": ["Kosovo"]},
    "south_sudan": {"iso": "SS", "names": ["South Sudan"]},
    "turkey": {"iso": "TR", "names": ["Turkey", "Türkiye"]},
    "italy": {"iso": "IT", "names": ["Italy"]},
    "japan": {"iso": "JP", "names": ["Japan"]},
    "france": {"iso": "FR", "names": ["France"]},
    "mexico": {"iso": "MX", "names": ["Mexico"]},
    "india": {"iso": "IN", "names": ["India"]},
    "spain": {"iso": "ES", "names": ["Spain"]},
    "greece": {"iso": "GR", "names": ["Greece"]},
    "usa": {"iso": "US", "names": ["United States of America", "United States"]},
    "china": {"iso": "CN", "names": ["China"]},
    "thailand": {"iso": "TH", "names": ["Thailand"]},
    "brazil": {"iso": "BR", "names": ["Brazil"]},
    "morocco": {"iso": "MA", "names": ["Morocco"]},
    "argentina": {"iso": "AR", "names": ["Argentina"]},
    "south_korea": {"iso": "KR", "names": ["South Korea", "Korea, Republic of", "Republic of Korea"]},
    "peru": {"iso": "PE", "names": ["Peru"]},
    "germany": {"iso": "DE", "names": ["Germany"]},
    "portugal": {"iso": "PT", "names": ["Portugal"]},
    "vietnam": {"iso": "VN", "names": ["Vietnam", "Viet Nam"]},
    "lebanon": {"iso": "LB", "names": ["Lebanon"]},
    "united_kingdom": {"iso": "GB", "names": ["United Kingdom"]},
    "egypt": {"iso": "EG", "names": ["Egypt"]},
    "canada": {"iso": "CA", "names": ["Canada"]},
    "russia": {"iso": "RU", "names": ["Russia", "Russian Federation"]},
    "australia": {"iso": "AU", "names": ["Australia"]},
    "sweden": {"iso": "SE", "names": ["Sweden"]},
    "ethiopia": {"iso": "ET", "names": ["Ethiopia"]},
    "colombia": {"iso": "CO", "names": ["Colombia"]},
    "nigeria": {"iso": "NG", "names": ["Nigeria"]},
    "south_africa": {"iso": "ZA", "names": ["South Africa"]},
    "indonesia": {"iso": "ID", "names": ["Indonesia"]},
    "malaysia": {"iso": "MY", "names": ["Malaysia"]},
    "philippines": {"iso": "PH", "names": ["Philippines"]},
    "iran": {"iso": "IR", "names": ["Iran", "Iran, Islamic Republic of"]},
    "pakistan": {"iso": "PK", "names": ["Pakistan"]},
    "bangladesh": {"iso": "BD", "names": ["Bangladesh"]},
    "nepal": {"iso": "NP", "names": ["Nepal"]},
    "sri_lanka": {"iso": "LK", "names": ["Sri Lanka"]},
    "myanmar": {"iso": "MM", "names": ["Myanmar"]},
    "cuba": {"iso": "CU", "names": ["Cuba"]},
    "jamaica": {"iso": "JM", "names": ["Jamaica"]},
    "dominican": {"iso": "DO", "names": ["Dominican Republic", "Dominican Rep."]},
    "venezuela": {"iso": "VE", "names": ["Venezuela"]},
    "chile": {"iso": "CL", "names": ["Chile"]},
    "ecuador": {"iso": "EC", "names": ["Ecuador"]},
    "bolivia": {"iso": "BO", "names": ["Bolivia"]},
    "uruguay": {"iso": "UY", "names": ["Uruguay"]},
    "paraguay": {"iso": "PY", "names": ["Paraguay"]},
    "costa_rica": {"iso": "CR", "names": ["Costa Rica"]},
    "panama": {"iso": "PA", "names": ["Panama"]},
    "iceland": {"iso": "IS", "names": ["Iceland"]},
    "ireland": {"iso": "IE", "names": ["Ireland"]},
    "netherlands": {"iso": "NL", "names": ["Netherlands"]},
    "belgium": {"iso": "BE", "names": ["Belgium"]},
    "switzerland": {"iso": "CH", "names": ["Switzerland"]},
    "austria": {"iso": "AT", "names": ["Austria"]},
    "poland": {"iso": "PL", "names": ["Poland"]},
    "czech": {"iso": "CZ", "names": ["Czech Republic", "Czechia"]},
    "hungary": {"iso": "HU", "names": ["Hungary"]},
    "romania": {"iso": "RO", "names": ["Romania"]},
    "bulgaria": {"iso": "BG", "names": ["Bulgaria"]},
    "serbia": {"iso": "RS", "names": ["Serbia", "Republic of Serbia"]},
    "croatia": {"iso": "HR", "names": ["Croatia"]},
    "bosnia": {"iso": "BA", "names": ["Bosnia and Herzegovina", "Bosnia and Herz."]},
    "albania": {"iso": "AL", "names": ["Albania"]},
    "georgia_country": {"iso": "GE", "names": ["Georgia"]},
    "armenia": {"iso": "AM", "names": ["Armenia"]},
    "azerbaijan": {"iso": "AZ", "names": ["Azerbaijan"]},
    "uzbekistan": {"iso": "UZ", "names": ["Uzbekistan"]},
    "kazakhstan": {"iso": "KZ", "names": ["Kazakhstan"]},
    "mongolia": {"iso": "MN", "names": ["Mongolia"]},
    "saudi": {"iso": "SA", "names": ["Saudi Arabia"]},
    "uae": {"iso": "AE", "names": ["United Arab Emirates"]},
    "jordan": {"iso": "JO", "names": ["Jordan"]},
    "iraq": {"iso": "IQ", "names": ["Iraq"]},
    "syria": {"iso": "SY", "names": ["Syria", "Syrian Arab Republic"]},
    "israel": {"iso": "IL", "names": ["Israel"]},
    "tunisia": {"iso": "TN", "names": ["Tunisia"]},
    "algeria": {"iso": "DZ", "names": ["Algeria"]},
    "ghana": {"iso": "GH", "names": ["Ghana"]},
    "senegal": {"iso": "SN", "names": ["Senegal"]},
    "kenya": {"iso": "KE", "names": ["Kenya"]},
    "tanzania": {"iso": "TZ", "names": ["Tanzania", "United Republic of Tanzania"]},
    "morocco2": {"iso": "MG", "names": ["Madagascar"]},
    "new_zealand": {"iso": "NZ", "names": ["New Zealand"]},
    "fiji": {"iso": "FJ", "names": ["Fiji"]},
    "jamaica2": {"iso": "HT", "names": ["Haiti"]},
    "denmark": {"iso": "DK", "names": ["Denmark"]},
    "norway": {"iso": "NO", "names": ["Norway"]},
    "finland": {"iso": "FI", "names": ["Finland"]},
    "singapore": {"iso": "SG", "names": ["Singapore"]},
    "taiwan": {"iso": "TW", "names": ["Taiwan"]},
    "hong_kong": {"iso": "HK", "names": ["Hong Kong"]},
    "cambodia": {"iso": "KH", "names": ["Cambodia"]},
    "laos": {"iso": "LA", "names": ["Laos", "Lao PDR"]},
    "portugal2": {"iso": "PT", "names": ["Portugal"]},  # Duplicate, will use same boundary
    "scotland": {"iso": "GB", "names": ["United Kingdom"]},  # Part of UK
    "wales": {"iso": "GB", "names": ["United Kingdom"]},  # Part of UK
    "trinidad": {"iso": "TT", "names": ["Trinidad and Tobago", "Trinidad and Tob."]},
    "Cuba2": {"iso": "GT", "names": ["Guatemala"]},
    "honduras": {"iso": "HN", "names": ["Honduras"]},
}

def simplify_polygon(coords, max_points=80):
    """Simple polygon simplification - keep every Nth point to limit vertex count."""
    if len(coords) <= max_points:
        return coords
    step = max(1, len(coords) // max_points)
    simplified = coords[::step]
    # Ensure the polygon is closed
    if simplified[0] != simplified[-1]:
        simplified.append(simplified[0])
    return simplified

def find_country_feature(features, country_id, mapping):
    """Find GeoJSON feature matching a country ID."""
    info = mapping.get(country_id)
    if not info:
        return None
    
    iso = info["iso"]
    names = info["names"]
    
    for feature in features:
        props = feature.get("properties", {})
        # Try ISO code first
        feature_iso = props.get("ISO_A2", "") or props.get("iso_a2", "")
        if feature_iso == iso:
            return feature
        # Try name matching
        feature_name = props.get("NAME", "") or props.get("name", "") or props.get("ADMIN", "") or props.get("admin", "")
        feature_name_long = props.get("NAME_LONG", "") or props.get("name_long", "")
        for name in names:
            if name.lower() == feature_name.lower() or name.lower() == feature_name_long.lower():
                return feature
    return None

def extract_polygons(geometry):
    """Extract polygon coordinate arrays from GeoJSON geometry."""
    polygons = []
    geo_type = geometry.get("type", "")
    coords = geometry.get("coordinates", [])
    
    if geo_type == "Polygon":
        # Only use exterior ring (first element)
        if coords:
            polygons.append(coords[0])
    elif geo_type == "MultiPolygon":
        for polygon in coords:
            if polygon:
                polygons.append(polygon[0])  # exterior ring only
    
    return polygons

def format_swift_polygon(polygon, indent="            "):
    """Format polygon coordinates as Swift array."""
    lines = []
    for i, coord in enumerate(polygon):
        lon, lat = coord[0], coord[1]
        comma = "," if i < len(polygon) - 1 else ""
        lines.append(f"{indent}(lat: {lat:.2f}, lon: {lon:.2f}){comma}")
    return "\n".join(lines)

def main():
    print("Downloading Natural Earth 110m GeoJSON...")
    cache_path = "/tmp/ne_110m_countries.geojson"
    
    if os.path.exists(cache_path):
        print("Using cached GeoJSON...")
        with open(cache_path, 'r') as f:
            geojson = json.load(f)
    else:
        req = urllib.request.Request(GEOJSON_URL)
        req.add_header('User-Agent', 'Mozilla/5.0')
        with urllib.request.urlopen(req) as response:
            data = response.read().decode('utf-8')
            geojson = json.loads(data)
            with open(cache_path, 'w') as f:
                f.write(data)
    
    features = geojson.get("features", [])
    print(f"Found {len(features)} country features in GeoJSON")
    
    # Build Swift output
    swift_lines = []
    swift_lines.append("// Auto-generated from Natural Earth 110m GeoJSON")
    swift_lines.append("// Do not edit manually - run generate_country_boundaries.py to regenerate")
    swift_lines.append("")
    swift_lines.append("import Foundation")
    swift_lines.append("")
    swift_lines.append("struct CountryBoundary {")
    swift_lines.append("    let countryId: String")
    swift_lines.append("    let polygons: [[(lat: Double, lon: Double)]]")
    swift_lines.append("}")
    swift_lines.append("")
    swift_lines.append("let allCountryBoundaries: [CountryBoundary] = [")
    
    found = 0
    not_found = []
    already_added = set()  # Track ISO codes already added (for duplicates like portugal2)
    
    for country_id, info in COUNTRY_ID_MAP.items():
        feature = find_country_feature(features, country_id, COUNTRY_ID_MAP)
        if not feature:
            not_found.append(country_id)
            continue
        
        geometry = feature.get("geometry", {})
        polygons = extract_polygons(geometry)
        if not polygons:
            not_found.append(country_id)
            continue
        
        # Simplify polygons
        simplified = []
        for poly in polygons:
            # For large countries, allow more points; for small ones, fewer
            max_pts = 60
            s = simplify_polygon(poly, max_points=max_pts)
            if len(s) >= 3:
                simplified.append(s)
        
        if not simplified:
            not_found.append(country_id)
            continue
        
        found += 1
        swift_lines.append(f"    CountryBoundary(")
        swift_lines.append(f'        countryId: "{country_id}",')
        swift_lines.append(f"        polygons: [")
        
        for pi, poly in enumerate(simplified):
            swift_lines.append("            [")
            for ci, coord in enumerate(poly):
                lon, lat = coord[0], coord[1]
                comma = "," if ci < len(poly) - 1 else ""
                swift_lines.append(f"                (lat: {lat:.2f}, lon: {lon:.2f}){comma}")
            comma = "," if pi < len(simplified) - 1 else ""
            swift_lines.append(f"            ]{comma}")
        
        swift_lines.append("        ]")
        swift_lines.append("    ),")
    
    swift_lines.append("]")
    swift_lines.append("")
    
    # Write output
    output_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "Models", "CountryBoundaries.swift")
    with open(output_path, 'w') as f:
        f.write("\n".join(swift_lines))
    
    print(f"\nGenerated {output_path}")
    print(f"Found boundaries for {found} countries")
    if not_found:
        print(f"Could not find boundaries for: {', '.join(not_found)}")
    
    # Count total vertices
    total_vertices = 0
    for line in swift_lines:
        if "(lat:" in line:
            total_vertices += 1
    print(f"Total vertex count: {total_vertices}")

if __name__ == "__main__":
    main()
