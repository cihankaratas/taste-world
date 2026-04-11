import SwiftUI

struct RecipesListView: View {
    @State private var sortOrder: SortOrder = .highToLow
    @State private var selectedRecipe: (country: Country, dish: Dish)? = nil
    @State private var showingRecipeDetail = false
    @EnvironmentObject var favoritesManager: FavoritesManager
    @EnvironmentObject var firestoreService: FirestoreService
    
    enum SortOrder {
        case lowToHigh
        case highToLow
        
        var label: String {
            switch self {
            case .lowToHigh: return "⬆️ Az → Çok"
            case .highToLow: return "⬇️ Çok → Az"
            }
        }
    }
    
    var sortedRecipes: [(country: Country, dish: Dish)] {
        let sourceCountries = firestoreService.countries.isEmpty ? allCountries : firestoreService.countries
        let recipes = sourceCountries.map { country in
            (country: country, dish: country.famousDish)
        }
        
        switch sortOrder {
        case .lowToHigh:
            return recipes.sorted { $0.dish.extractedCalories < $1.dish.extractedCalories }
        case .highToLow:
            return recipes.sorted { $0.dish.extractedCalories > $1.dish.extractedCalories }
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            // Header
            VStack(alignment: .leading, spacing: 12) {
                Text("🍽️ TÜM YEMEKLERİ KALORİSİNE GÖRE KEŞFET")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.white)
                    .tracking(1)
                
                // Sort Controls
                HStack(spacing: 10) {
                    Menu {
                        Button("⬆️ Az → Çok (Kalori)") {
                            withAnimation {
                                sortOrder = .lowToHigh
                            }
                        }
                        Button("⬇️ Çok → Az (Kalori)") {
                            withAnimation {
                                sortOrder = .highToLow
                            }
                        }
                    } label: {
                        HStack(spacing: 8) {
                            Image(systemName: "arrow.up.arrow.down")
                                .font(.system(size: 14, weight: .semibold))
                            Text(sortOrder.label)
                                .font(.system(size: 14, weight: .semibold))
                        }
                        .foregroundColor(.white)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color(red: 1, green: 0.55, blue: 0.1).opacity(0.8))
                        )
                    }
                    
                    Spacer()
                    
                    Text("📊 \(sortedRecipes.count) Yemek")
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundColor(.white.opacity(0.6))
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 16)
            .background(Color.white.opacity(0.05))
            
            // Recipes List
            ScrollView(showsIndicators: false) {
                LazyVStack(spacing: 10) {
                    ForEach(Array(sortedRecipes.enumerated()), id: \.offset) { index, item in
                        RecipeRowView(
                            country: item.country,
                            dish: item.dish,
                            rank: index + 1,
                            isFavorite: favoritesManager.favoriteIDs.contains(item.country.id)
                        )
                        .onTapGesture {
                            selectedRecipe = item
                            showingRecipeDetail = true
                        }
                    }
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 12)
            }
        }
        .background(
            LinearGradient(
                colors: [
                    Color(red: 0.05, green: 0.05, blue: 0.12),
                    Color(red: 0.02, green: 0.04, blue: 0.12)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
        )
        .sheet(isPresented: $showingRecipeDetail) {
            if let selected = selectedRecipe {
                RecipeDetailView(country: selected.country)
                    .presentationDetents([.large])
                    .presentationDragIndicator(.visible)
            }
        }
    }
}

// MARK: - Recipe Row View
struct RecipeRowView: View {
    let country: Country
    let dish: Dish
    let rank: Int
    let isFavorite: Bool
    @EnvironmentObject var favoritesManager: FavoritesManager
    
    var calorieColor: Color {
        let cal = dish.extractedCalories
        if cal < 350 { return Color(red: 0.2, green: 0.8, blue: 0.4) } // Yeşil
        if cal < 550 { return Color(red: 1, green: 0.8, blue: 0.2) }   // Sarı
        return Color(red: 1, green: 0.3, blue: 0.2)                    // Kırmızı
    }
    
    var body: some View {
        HStack(spacing: 12) {
            // Rank
            Text("\(rank)")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(Color(red: 1, green: 0.55, blue: 0.1))
                .frame(width: 30)
            
            // Country Flag & Name
            VStack(alignment: .leading, spacing: 4) {
                HStack(spacing: 8) {
                    Text(country.flag)
                        .font(.system(size: 20))
                    Text(country.name)
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundColor(.white.opacity(0.6))
                }
                
                Text(dish.name)
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.white)
                    .lineLimit(1)
            }
            
            Spacer()
            
            // Calories Badge
            HStack(spacing: 6) {
                Image(systemName: "flame.fill")
                    .font(.system(size: 12))
                    .foregroundColor(calorieColor)
                
                Text("\(dish.extractedCalories)")
                    .font(.system(size: 13, weight: .bold))
                    .foregroundColor(calorieColor)
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 6)
            .background(calorieColor.opacity(0.15))
            .cornerRadius(6)
            
            // Favorite Button
            Button {
                favoritesManager.toggleFavorite(countryID: country.id)
            } label: {
                Image(systemName: isFavorite ? "heart.fill" : "heart")
                    .font(.system(size: 14))
                    .foregroundColor(isFavorite ? Color(red: 1, green: 0.2, blue: 0.3) : .white.opacity(0.4))
            }
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 12)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.white.opacity(0.06))
        )
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.white.opacity(0.08), lineWidth: 1)
        )
    }
}

#Preview {
    RecipesListView()
        .environmentObject(FavoritesManager())
        .environmentObject(FirestoreService())
}
