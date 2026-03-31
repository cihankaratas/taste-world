import SwiftUI

struct ContentView: View {
    @AppStorage("username") private var storedUsername: String = ""
    @State private var selectedCountry: Country? = nil
    @State private var showingRecipe = false
    @State private var showingSplash = true
    @State private var showingFavorites = false
    @State private var currentTab: Int = 0
    @EnvironmentObject var favoritesManager: FavoritesManager
    
    private var greetingMessage: String {
        let hour = Calendar.current.component(.hour, from: Date())
        if hour >= 6 && hour < 12 { return "Günaydın" }
        else if hour >= 12 && hour < 19 { return "İyi günler" }
        else if hour >= 19 && hour <= 23 { return "İyi akşamlar" }
        else { return "İyi geceler" }
    }
    
    var body: some View {
        ZStack {
            // Deep space background
            LinearGradient(
                colors: [
                    Color(red: 0.02, green: 0.02, blue: 0.08),
                    Color(red: 0.05, green: 0.08, blue: 0.18),
                    Color(red: 0.02, green: 0.04, blue: 0.12)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            // Stars
            StarsView()

            VStack(spacing: 0) {
                // Top Header
                headerView
                
                // Tab Content
                if currentTab == 0 {
                    // Globe Tab
                    VStack(spacing: 0) {
                        GlobeView(selectedCountry: $selectedCountry)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .onChange(of: selectedCountry) { newCountry in
                                if newCountry != nil {
                                    withAnimation(.spring(response: 0.4, dampingFraction: 0.75)) {
                                        showingRecipe = true
                                    }
                                }
                            }

                        bottomHint
                    }
                } else {
                    // Recipes List Tab
                    RecipesListView()
                }
                
                Spacer()
                    .layoutPriority(-1)
                
                // Bottom Tab Bar
                HStack(spacing: 0) {
                    ForEach([(0, "🌍 Dünya"), (1, "📊 Sıralamalar")], id: \.0) { tab, label in
                        Button {
                            withAnimation(.easeInOut(duration: 0.2)) {
                                currentTab = tab
                            }
                        } label: {
                            Text(label)
                                .font(.system(size: 14, weight: currentTab == tab ? .semibold : .regular))
                                .foregroundColor(currentTab == tab ? Color(red: 1, green: 0.55, blue: 0.1) : .white.opacity(0.5))
                            
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 14)
                        .padding(.horizontal, 16)
                    }
                }
                .background(Color.white.opacity(0.03))
                .overlay(
                    Rectangle()
                        .fill(Color.white.opacity(0.08))
                        .frame(height: 1),
                    alignment: .top
                )
                .ignoresSafeArea(edges: .bottom)
            }

            // Splash screen
            if showingSplash {
                SplashView()
                    .transition(.opacity)
                    .zIndex(100)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.8) {
                            withAnimation(.easeOut(duration: 0.6)) {
                                showingSplash = false
                            }
                        }
                    }
            }
        }
        .fullScreenCover(isPresented: .init(get: { storedUsername.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty }, set: { _ in })) {
            LoginView()
        }
        .sheet(isPresented: $showingRecipe, onDismiss: {
            selectedCountry = nil
        }) {
            if let country = selectedCountry {
                RecipeDetailView(country: country)
                    .presentationDetents([.large])
                    .presentationDragIndicator(.visible)
            }
        }
    }
    
    private var headerView: some View {
        VStack(spacing: 4) {
            HStack {
                VStack(alignment: .leading, spacing: 2) {
                    if !storedUsername.isEmpty {
                        Text("\(greetingMessage), \(storedUsername) 👋")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.white.opacity(0.7))
                            .padding(.bottom, 2)
                    }
                    
                    Text("TASTE")
                        .font(.system(size: 30, weight: .black, design: .rounded))
                        .foregroundColor(Color(red: 1, green: 0.55, blue: 0.1))
                    + Text(" WORLD")
                        .font(.system(size: 30, weight: .black, design: .rounded))
                        .foregroundColor(.white)
                }
                Spacer()
                Button {
                    let impactMed = UIImpactFeedbackGenerator(style: .medium)
                    impactMed.impactOccurred()
                    withAnimation {
                        currentTab = 2
                    }
                } label: {
                    ZStack(alignment: .topTrailing) {
                        Image(systemName: "fork.knife.circle.fill")
                            .font(.system(size: 32))
                            .foregroundColor(Color(red: 1, green: 0.5, blue: 0.1))
                        
                        if favoritesManager.favoriteIDs.count > 0 {
                            Text("\(favoritesManager.favoriteIDs.count)")
                                .font(.system(size: 11, weight: .bold))
                                .foregroundColor(.white)
                                .padding(.horizontal, 6)
                                .padding(.vertical, 2)
                                .background(Color(red: 1.0, green: 0.2, blue: 0.3))
                                .clipShape(Capsule())
                                .offset(x: 10, y: -4)
                        }
                    }
                }
            }
            .padding(.horizontal, 22)
            .padding(.top, 8)
            
            Text("Dünyayı döndür · Ülkelerin lezzetlerini keşfet")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.white.opacity(0.4))
                .tracking(0.5)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 22)
        }
        .padding(.bottom, 8)
    }
    
    private var bottomHint: some View {
        HStack(spacing: 8) {
            Image(systemName: "hand.draw")
                .font(.system(size: 14))
            Text("Sürükle ve döndür · Yemeğe dokun ve tarifi gör")
                .font(.system(size: 12))
        }
        .foregroundColor(.white.opacity(0.3))
        .padding(.bottom, 20)
    }
}

// MARK: - Stars Background
struct StarsView: View {
    let stars: [(x: Double, y: Double, size: Double, opacity: Double)] = {
        var result: [(Double, Double, Double, Double)] = []
        srand48(42)
        for _ in 0..<120 {
            result.append((drand48(), drand48(), drand48() * 2 + 0.5, drand48() * 0.5 + 0.1))
        }
        return result
    }()
    
    var body: some View {
        GeometryReader { geo in
            ForEach(0..<stars.count, id: \.self) { i in
                Circle()
                    .fill(Color.white.opacity(stars[i].opacity))
                    .frame(width: stars[i].size, height: stars[i].size)
                    .position(
                        x: stars[i].x * geo.size.width,
                        y: stars[i].y * geo.size.height
                    )
            }
        }
        .ignoresSafeArea()
        .allowsHitTesting(false)
    }
}

#Preview {
    ContentView()
}
