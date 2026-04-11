import SwiftUI
import FirebaseCore

@main
struct TasteWorldApp: App {
    @StateObject private var favoritesManager = FavoritesManager()
    @StateObject private var firestoreService = FirestoreService()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(favoritesManager)
                .environmentObject(firestoreService)
        }
    }
}
