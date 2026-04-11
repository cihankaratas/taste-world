import SwiftUI

// MARK: - Globe SwiftUI Wrapper
struct GlobeView: UIViewControllerRepresentable {
    @Binding var selectedCountry: Country?
    var countries: [Country]
    
    func makeUIViewController(context: Context) -> GlobeViewController {
        let vc = GlobeViewController(countries: countries)
        vc.onCountrySelected = { country in
            DispatchQueue.main.async {
                selectedCountry = country
            }
        }
        return vc
    }
    
    func updateUIViewController(_ uiViewController: GlobeViewController, context: Context) {
        uiViewController.updateCountries(countries)
    }
}

#if DEBUG
struct GlobeView_Previews: PreviewProvider {
    static var previews: some View {
        GlobeView(selectedCountry: .constant(nil), countries: allCountries)
            .edgesIgnoringSafeArea(.all)
    }
}
#endif
