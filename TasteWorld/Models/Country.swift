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
    
    static func == (lhs: Dish, rhs: Dish) -> Bool {
        lhs.id == rhs.id
    }
}

