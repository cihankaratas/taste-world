import Foundation

struct Country: Identifiable, Equatable {
    let id: String
    let name: String
    let flag: String
    let latitude: Double
    let longitude: Double
    let famousDish: Dish
    
    static func == (lhs: Country, rhs: Country) -> Bool {
        lhs.id == rhs.id
    }
}

struct Dish: Identifiable, Equatable {
    let id: String
    let name: String
    let imageURL: String
    let description: String
    let ingredients: [String]
    let steps: [String]
    let calories: Int = 0
    
    // Description'dan kaloriyi extract eden computed property
    var extractedCalories: Int {
        let pattern = "Tahmini porsiyonu (\\d+) kaloridir"
        if let regex = try? NSRegularExpression(pattern: pattern),
           let match = regex.firstMatch(in: description, range: NSRange(description.startIndex..., in: description)),
           let range = Range(match.range(at: 1), in: description),
           let cal = Int(description[range]) {
            return cal
        }
        return calories
    }
    
    static func == (lhs: Dish, rhs: Dish) -> Bool {
        lhs.id == rhs.id
    }
}

