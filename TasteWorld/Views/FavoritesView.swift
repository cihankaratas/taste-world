import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.dismiss) private var dismiss
    
    @State private var selectedCountry: Country? = nil
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.05, green: 0.05, blue: 0.12).ignoresSafeArea()
                
                let favorites = favoritesManager.getFavoriteCountries()
                
                if favorites.isEmpty {
                    VStack(spacing: 16) {
                        Image(systemName: "heart.slash")
                            .font(.system(size: 64))
                            .foregroundColor(.white.opacity(0.3))
                        Text("Henüz favori tarifiniz yok.")
                            .font(.system(size: 18, weight: .medium))
                            .foregroundColor(.white.opacity(0.6))
                    }
                } else {
                    List {
                        ForEach(favorites) { country in
                            Button {
                                selectedCountry = country
                            } label: {
                                HStack(spacing: 16) {
                                    Text(country.flag)
                                        .font(.system(size: 40))
                                    
                                    VStack(alignment: .leading, spacing: 4) {
                                        Text(country.name)
                                            .font(.system(size: 14, weight: .semibold))
                                            .foregroundColor(.white.opacity(0.6))
                                            .textCase(.uppercase)
                                        Text(country.famousDish.name)
                                            .font(.system(size: 18, weight: .bold))
                                            .foregroundColor(.white)
                                    }
                                    Spacer()
                                    Button {
                                        let impact = UIImpactFeedbackGenerator(style: .medium)
                                        impact.impactOccurred()
                                        favoritesManager.toggleFavorite(countryID: country.id)
                                    } label: {
                                        Image(systemName: "heart.fill")
                                            .foregroundColor(Color(red: 1.0, green: 0.2, blue: 0.3))
                                            .font(.system(size: 20))
                                            .padding(8)
                                    }
                                    .buttonStyle(.plain)
                                }
                                .padding(.vertical, 8)
                            }
                            .listRowBackground(Color.clear)
                            .listRowSeparator(.hidden)
                        }
                    }
                    .listStyle(.plain)
                    .padding(.top, 16)
                }
            }
            .navigationTitle("Favori Tarifler")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Kapat") {
                        dismiss()
                    }
                    .foregroundColor(Color(red: 1, green: 0.55, blue: 0.1))
                    .bold()
                }
            }
            .onAppear {
                let appearance = UINavigationBarAppearance()
                appearance.configureWithOpaqueBackground()
                appearance.backgroundColor = UIColor(red: 0.05, green: 0.05, blue: 0.12, alpha: 1)
                appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
                UINavigationBar.appearance().standardAppearance = appearance
                UINavigationBar.appearance().scrollEdgeAppearance = appearance
            }
            .sheet(item: $selectedCountry) { country in
                RecipeDetailView(country: country)
                    .presentationDetents([.large])
                    .presentationDragIndicator(.visible)
            }
        }
        .preferredColorScheme(.dark)
    }
}
