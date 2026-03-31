import SwiftUI

// MARK: - Recipe Detail View
struct RecipeDetailView: View {
    let country: Country
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var favoritesManager: FavoritesManager

    @State private var selectedTab = 0
    @State private var dishImage: UIImage? = nil
    
    var body: some View {
        ZStack(alignment: .top) {
            // Background
            Color(red: 0.05, green: 0.05, blue: 0.12)
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                    // Hero Image
                    heroSection
                    
                    // Content
                    VStack(alignment: .leading, spacing: 20) {
                        // Header
                        headerSection
                        
                        // Tabs
                        tabSelector
                        
                        // Tab Content
                        if selectedTab == 0 {
                            ingredientsSection
                        } else {
                            stepsSection
                        }
                        
                        Spacer().frame(height: 40)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                }
            }
            
            // Close button
            HStack {
                Spacer()
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size: 28))
                        .foregroundColor(.white.opacity(0.8))
                        .shadow(color: .black.opacity(0.5), radius: 4)
                }
                .padding(.trailing, 16)
                .padding(.top, 16)
            }
        }

        .onAppear {
            loadDishImage()
        }
    }
    
    // MARK: - Hero Section
    private var heroSection: some View {
        ZStack {
            if let img = dishImage {
                Image(uiImage: img)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: UIScreen.main.bounds.width, height: 280)
                    .clipped()
            } else {
                // Gradient placeholder
                LinearGradient(
                    colors: [
                        Color(red: 0.9, green: 0.4, blue: 0.1),
                        Color(red: 0.8, green: 0.2, blue: 0.5)
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .frame(height: 280)
                .overlay {
                    Text(country.flag)
                        .font(.system(size: 100))
                }
            }
            
            // Bottom gradient fade
            VStack {
                Spacer()
                LinearGradient(
                    colors: [.clear, Color(red: 0.05, green: 0.05, blue: 0.12)],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .frame(height: 100)
            }
            .frame(height: 280)
        }
    }
    
    // MARK: - Header
    private var headerSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 10) {
                Text(country.flag)
                    .font(.system(size: 32))
                Text(country.name)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white.opacity(0.6))
                    .textCase(.uppercase)
                    .tracking(2)
            }
            
            HStack(alignment: .top) {
                Text(country.famousDish.name)
                    .font(.system(size: 28, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .fixedSize(horizontal: false, vertical: true)
                
                Spacer()
                
                Button {
                    let impactMed = UIImpactFeedbackGenerator(style: .medium)
                    impactMed.impactOccurred()
                    favoritesManager.toggleFavorite(countryID: country.id)
                } label: {
                    Image(systemName: favoritesManager.favoriteIDs.contains(country.id) ? "heart.fill" : "heart")
                        .font(.system(size: 26))
                        .foregroundColor(favoritesManager.favoriteIDs.contains(country.id) ? Color(red: 1.0, green: 0.2, blue: 0.3) : .white.opacity(0.4))
                        .padding(.top, 2)
                }
            }
            
            Text(country.famousDish.description)
                .font(.system(size: 15))
                .foregroundColor(.white.opacity(0.7))
                .lineSpacing(4)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.top, 4)
            
            HStack(spacing: 8) {
                Image(systemName: "flame.fill")
                    .font(.system(size: 14))
                    .foregroundColor(Color(red: 1, green: 0.55, blue: 0.1))
                
                Text("\(country.famousDish.extractedCalories) kcal")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(Color(red: 1, green: 0.55, blue: 0.1))
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 10)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.white.opacity(0.08))
            )
            .padding(.top, 8)
        }
    }
    
    // MARK: - Tab Selector
    private var tabSelector: some View {
        HStack(spacing: 0) {
            ForEach([("🥕 İçindekiler", 0), ("👨‍🍳 Yapılış", 1)], id: \.1) { label, idx in
                Button {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        selectedTab = idx
                    }
                } label: {
                    VStack(spacing: 6) {
                        Text(label)
                            .font(.system(size: 15, weight: selectedTab == idx ? .bold : .regular))
                            .foregroundColor(selectedTab == idx ? .white : .white.opacity(0.4))
                        
                        Rectangle()
                            .fill(selectedTab == idx ? Color(red: 1, green: 0.55, blue: 0.1) : Color.clear)
                            .frame(height: 2)
                    }
                }
                .frame(maxWidth: .infinity)
            }
        }
        .padding(.vertical, 4)
    }
    
    // MARK: - Ingredients
    private var ingredientsSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            ForEach(Array(country.famousDish.ingredients.enumerated()), id: \.offset) { _, ingredient in
                HStack(spacing: 12) {
                    Circle()
                        .fill(Color(red: 1, green: 0.55, blue: 0.1))
                        .frame(width: 8, height: 8)
                    
                    Text(ingredient)
                        .font(.system(size: 15))
                        .foregroundColor(.white.opacity(0.85))
                    
                    Spacer()
                }
                .padding(.vertical, 8)
                .padding(.horizontal, 14)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white.opacity(0.05))
                )
            }
        }
        .transition(.opacity.combined(with: .move(edge: .leading)))
    }
    
    // MARK: - Steps
    private var stepsSection: some View {
        VStack(alignment: .leading, spacing: 14) {
            ForEach(Array(country.famousDish.steps.enumerated()), id: \.offset) { idx, step in
                HStack(alignment: .top, spacing: 14) {
                    Text("\(idx + 1)")
                        .font(.system(size: 14, weight: .bold, design: .rounded))
                        .foregroundColor(Color(red: 0.05, green: 0.05, blue: 0.12))
                        .frame(width: 28, height: 28)
                        .background(
                            Circle()
                                .fill(Color(red: 1, green: 0.55, blue: 0.1))
                        )
                    
                    Text(step)
                        .font(.system(size: 15))
                        .foregroundColor(.white.opacity(0.85))
                        .lineSpacing(3)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Spacer()
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 14)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white.opacity(0.05))
                )
            }
        }
        .transition(.opacity.combined(with: .move(edge: .trailing)))
    }
    
    // MARK: - Image Loading
    private func loadDishImage() {
        if let localImage = UIImage(named: country.id) {
            withAnimation { self.dishImage = localImage }
            return
        }
        
        guard let url = URL(string: country.famousDish.imageURL) else { return }
        URLSession.shared.dataTask(with: url) { data, _, _ in
            if let data = data, let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    withAnimation { dishImage = image }
                }
            }
        }.resume()
    }
}

#Preview {
    RecipeDetailView(country: allCountries[0])
}
