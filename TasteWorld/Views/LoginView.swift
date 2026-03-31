import SwiftUI

struct LoginView: View {
    @AppStorage("username") private var storedUsername: String = ""
    @State private var inputText: String = ""
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ZStack {
            Color(red: 0.05, green: 0.05, blue: 0.12).ignoresSafeArea()
            
            VStack(spacing: 30) {
                Spacer()
                
                // Logo or Title
                VStack(spacing: 10) {
                    Text("TASTE WORLD")
                        .font(.system(size: 40, weight: .black, design: .rounded))
                        .foregroundColor(Color(red: 1, green: 0.55, blue: 0.1))
                    
                    Text("Dünya lezzetlerine hoş geldin")
                        .font(.system(size: 16, weight: .semibold))
                        .foregroundColor(.white.opacity(0.6))
                }
                
                Spacer().frame(height: 40)
                
                // Input Field
                VStack(alignment: .leading, spacing: 10) {
                    Text("Adınız nedir?")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.white.opacity(0.8))
                    
                    TextField("", text: $inputText, prompt: Text("Adınız").foregroundColor(.white.opacity(0.5)))
                        .padding()
                        .background(Color.white.opacity(0.1))
                        .cornerRadius(12)
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .medium))
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color(red: 1, green: 0.55, blue: 0.1).opacity(0.5), lineWidth: 1)
                        )
                }
                .padding(.horizontal, 30)
                
                // Login Button
                Button(action: {
                    let name = inputText.trimmingCharacters(in: .whitespacesAndNewlines)
                    if !name.isEmpty {
                        let impact = UIImpactFeedbackGenerator(style: .medium)
                        impact.impactOccurred()
                        withAnimation {
                            storedUsername = name
                        }
                    }
                }) {
                    Text("Keşfetmeye Başla")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(Color(red: 0.05, green: 0.05, blue: 0.12))
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            LinearGradient(colors: [Color(red: 1, green: 0.55, blue: 0.1), Color(red: 1, green: 0.35, blue: 0.1)], startPoint: .leading, endPoint: .trailing)
                        )
                        .cornerRadius(12)
                        .shadow(color: Color(red: 1, green: 0.55, blue: 0.1).opacity(0.3), radius: 8, x: 0, y: 4)
                }
                .padding(.horizontal, 30)
                .padding(.top, 20)
                .disabled(inputText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                .opacity(inputText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? 0.5 : 1.0)
                
                Spacer()
            }
        }
    }
}

#if DEBUG
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
#endif
