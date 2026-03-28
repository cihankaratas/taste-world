import SwiftUI

// MARK: - Globe SwiftUI Wrapper
struct GlobeView: UIViewControllerRepresentable {
    @Binding var selectedCountry: Country?
    
    func makeUIViewController(context: Context) -> GlobeViewController {
        let vc = GlobeViewController()
        vc.onCountrySelected = { country in
            DispatchQueue.main.async {
                selectedCountry = country
            }
        }
        return vc
    }
    
    func updateUIViewController(_ uiViewController: GlobeViewController, context: Context) {}
}
