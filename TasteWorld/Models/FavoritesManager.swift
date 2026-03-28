import Foundation
import Combine

class FavoritesManager: ObservableObject {
    @Published var favoriteIDs: Set<String> = []
    
    init() {
        if let data = UserDefaults.standard.data(forKey: "favorites"),
           let decoded = try? JSONDecoder().decode(Set<String>.self, from: data) {
            self.favoriteIDs = decoded
        }
    }
    
    func toggleFavorite(countryID: String) {
        if favoriteIDs.contains(countryID) {
            favoriteIDs.remove(countryID)
        } else {
            favoriteIDs.insert(countryID)
        }
        save()
    }
    
    private func save() {
        if let data = try? JSONEncoder().encode(favoriteIDs) {
            UserDefaults.standard.set(data, forKey: "favorites")
        }
    }
    
    func getFavoriteCountries() -> [Country] {
        return allCountries.filter { favoriteIDs.contains($0.id) }
    }
}
