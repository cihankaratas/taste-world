import SwiftUI

struct SplashView: View {
    @State private var globeScale: CGFloat = 0.5
    @State private var globeOpacity: Double = 0
    @State private var titleOpacity: Double = 0
    @State private var titleOffset: CGFloat = 30
    @State private var glowOpacity: Double = 0
    @State private var rotationAngle: Double = 0
    
    var body: some View {
        ZStack {
            // Background
            Color(red: 0.02, green: 0.02, blue: 0.08)
                .ignoresSafeArea()
            
            // Glow
            Circle()
                .fill(
                    RadialGradient(
                        colors: [
                            Color(red: 0.2, green: 0.5, blue: 1).opacity(0.3),
                            Color.clear
                        ],
                        center: .center,
                        startRadius: 0,
                        endRadius: 200
                    )
                )
                .frame(width: 400, height: 400)
                .opacity(glowOpacity)
                .blur(radius: 20)
            
            VStack(spacing: 32) {
                ZStack {
                    // Globe icon placeholder (animated rings)
                    ForEach(0..<3) { i in
                        Circle()
                            .stroke(
                                LinearGradient(
                                    colors: [
                                        Color(red: 1, green: 0.6, blue: 0.1).opacity(0.8),
                                        Color(red: 0.2, green: 0.5, blue: 1).opacity(0.6)
                                    ],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                ),
                                lineWidth: 1.5
                            )
                            .frame(width: CGFloat(100 + i * 30), height: CGFloat(100 + i * 30))
                            .opacity(0.4 - Double(i) * 0.1)
                            .rotationEffect(.degrees(rotationAngle + Double(i) * 30))
                    }
                    
                    Image(systemName: "globe.europe.africa.fill")
                        .font(.system(size: 90))
                        .foregroundColor(Color(red: 0.2, green: 0.5, blue: 1))
                        .shadow(color: Color(red: 0.2, green: 0.5, blue: 1).opacity(0.6), radius: 20)
                }
                .scaleEffect(globeScale)
                .opacity(globeOpacity)
                
                VStack(spacing: 10) {
                    (Text("TASTE")
                        .foregroundColor(Color(red: 1, green: 0.55, blue: 0.1))
                     + Text(" WORLD")
                        .foregroundColor(.white)
                    )
                    .font(.system(size: 42, weight: .black, design: .rounded))
                    
                    Text("Dünyanın lezzetlerini keşfet")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(.white.opacity(0.5))
                        .tracking(1)
                }
                .offset(y: titleOffset)
                .opacity(titleOpacity)
            }
        }
        .onAppear {
            withAnimation(.spring(response: 0.7, dampingFraction: 0.6).delay(0.2)) {
                globeScale = 1.0
                globeOpacity = 1.0
                glowOpacity = 1.0
            }
            withAnimation(.easeOut(duration: 0.6).delay(0.5)) {
                titleOpacity = 1.0
                titleOffset = 0
            }
            withAnimation(.linear(duration: 20).repeatForever(autoreverses: false)) {
                rotationAngle = 360
            }
        }
    }
}

#Preview {
    SplashView()
}
