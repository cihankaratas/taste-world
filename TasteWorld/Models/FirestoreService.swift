import Foundation
import FirebaseFirestore

class FirestoreService: ObservableObject {
    @Published var countries: [Country] = []
    @Published var isLoading = false
    @Published var hasLoaded = false
    
    private let db = Firestore.firestore()
    
    func fetchCountries() {
        guard !hasLoaded else { return }
        isLoading = true
        
        db.collection("countries").getDocuments { [weak self] snapshot, error in
            DispatchQueue.main.async {
                guard let self = self else { return }
                self.isLoading = false
                self.hasLoaded = true
                
                if let error = error {
                    print("Firestore hata: \(error.localizedDescription)")
                    self.countries = allCountries // Yerel fallback
                    return
                }
                
                guard let documents = snapshot?.documents, !documents.isEmpty else {
                    print("Firestore'da veri yok, yerel veri kullanılıyor")
                    self.countries = allCountries // Yerel fallback
                    return
                }
                
                var fetched: [Country] = []
                for doc in documents {
                    do {
                        let data = doc.data()
                        let jsonData = try JSONSerialization.data(withJSONObject: data)
                        let country = try JSONDecoder().decode(Country.self, from: jsonData)
                        fetched.append(country)
                    } catch {
                        print("Parse hatası (\(doc.documentID)): \(error.localizedDescription)")
                    }
                }
                
                if fetched.isEmpty {
                    self.countries = allCountries // Parse başarısız → fallback
                } else {
                    self.countries = fetched
                    print("Firestore'dan \(fetched.count) ülke yüklendi ✅")
                }
            }
        }
    }
}
