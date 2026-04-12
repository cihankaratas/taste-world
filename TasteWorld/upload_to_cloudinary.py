import os
import json
import firebase_admin
from firebase_admin import credentials, firestore
import cloudinary
import cloudinary.uploader
import glob

# --- CONFIGURATION ---
CLOUDINARY_CLOUD_NAME = "dvgs50lqu"
CLOUDINARY_API_KEY = "274277224317271"
CLOUDINARY_API_SECRET = "kZLa6W6jj0ezKHrA9MpOas3eE20"

FIREBASE_JSON_PATH = "serviceAccountKey.json"
ASSETS_PATH = "Assets.xcassets"

# Initialize Cloudinary
cloudinary.config(
    cloud_name=CLOUDINARY_CLOUD_NAME,
    api_key=CLOUDINARY_API_KEY,
    api_secret=CLOUDINARY_API_SECRET,
    secure=True
)

# Initialize Firebase
if not os.path.exists(FIREBASE_JSON_PATH):
    print(f"❌ Firebase key bulunamadı: {FIREBASE_JSON_PATH}")
    exit(1)

cred = credentials.Certificate(FIREBASE_JSON_PATH)
firebase_admin.initialize_app(cred)
db = firestore.client()

def find_image_in_imageset(imageset_path):
    """imageset içindeki asıl resim dosyasını bulur (png, jpg, jpeg)"""
    extensions = ['*.png', '*.jpg', '*.jpeg', '*.PNG', '*.JPG', '*.JPEG']
    for ext in extensions:
        files = glob.glob(os.path.join(imageset_path, ext))
        if files:
            # 1x, 2x, 3x arasından en büyük olanı veya ilkini seçelim
            return files[0]
    return None

def upload_images():
    print("🔍 Firestore'daki ülkeler alınıyor...")
    countries_ref = db.collection("countries")
    docs = countries_ref.stream()
    
    count = 0
    updated = 0
    
    for doc in docs:
        count += 1
        country_id = doc.id
        data = doc.to_dict()
        
        # Resim adayı olarak country_id veya dish id'yi kullanalım
        dish_id = data.get('famousDish', {}).get('id', country_id)
        
        # Aramak istediğimiz klasör adları
        search_names = [dish_id, country_id]
        found_path = None
        
        for name in search_names:
            imageset_dir = os.path.join(ASSETS_PATH, f"{name}.imageset")
            if os.path.exists(imageset_dir):
                found_path = find_image_in_imageset(imageset_dir)
                if found_path:
                    break
        
        if found_path:
            print(f"📤 {country_id} için resim yükleniyor: {os.path.basename(found_path)}")
            try:
                # Cloudinary'e yükle (public_id içinde klasör zaten var)
                upload_result = cloudinary.uploader.upload(
                    found_path,
                    public_id=f"recipes/{country_id}",
                    overwrite=True,
                    resource_type="image"
                )
                
                # Optimize edilmiş URL'i al
                base_url = upload_result['secure_url']
                optimized_url = base_url.replace("/upload/", "/upload/f_auto,q_auto/")
                
                # Firestore'u güncelle
                dish_data = data.get('famousDish', {})
                dish_data['imageURL'] = optimized_url
                
                countries_ref.document(country_id).update({
                    "famousDish": dish_data
                })
                
                print(f"  ✅ Başarılı: {optimized_url}")
                updated += 1
                
            except Exception as e:
                print(f"  ❌ Hata ({country_id}): {str(e)}")
        else:
            print(f"  ⚠️  Resim bulunamadı: {country_id}")

    print(f"\n✨ İşlem tamamlandı!")
    print(f"📊 Toplam taranan: {count}")
    print(f"✅ Güncellenen: {updated}")

if __name__ == "__main__":
    upload_images()
