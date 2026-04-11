import Foundation

struct Country: Identifiable, Equatable, Codable {
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

struct Dish: Identifiable, Equatable, Codable {
    let id: String
    let name: String
    let imageURL: String
    let description: String
    let ingredients: [String]
    let steps: [String]
    var calories: Int
    
    init(id: String, name: String, imageURL: String, description: String, ingredients: [String], steps: [String], calories: Int = 0) {
        self.id = id
        self.name = name
        self.imageURL = imageURL
        self.description = description
        self.ingredients = ingredients
        self.steps = steps
        self.calories = calories
    }
    
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

