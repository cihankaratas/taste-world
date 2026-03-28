import SwiftUI

@main
struct TasteWorldApp: App {
    @StateObject private var favoritesManager = FavoritesManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(favoritesManager)
        }
    }
}
