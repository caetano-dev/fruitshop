//
//  FruitModel.swift
//  foodshop
//
//  Created by Pedro Caetano on 03/11/23.
//

import Foundation
import SwiftUI

struct Fruit: Hashable {
    let name: String
    let image: String
    let pricePerEach: Double
    let units: String
    let backgroundColor: UIColor
    let description: String
    
    init(name: String, image: String, pricePerEach: Double, units: String, backgroundColor: UIColor, description: String) {
        self.name = name
        self.image = image
        self.pricePerEach = pricePerEach
        self.units = units
        self.backgroundColor = backgroundColor
        self.description = description
    }
}

extension UIColor {
    static let strawberryRed = UIColor(red: 255/255, green: 89/255, blue: 89/255, alpha: 1.0)
    static let pineappleYellow = UIColor(red: 255/255, green: 221/255, blue: 51/255, alpha: 1.0)
    static let blueberryBlue = UIColor(red: 95/255, green: 169/255, blue: 243/255, alpha: 1.0)
    static let dragonFruitPink = UIColor(red: 255/255, green: 107/255, blue: 162/255, alpha: 1.0)
    static let lycheePink = UIColor(red: 252/255, green: 173/255, blue: 180/255, alpha: 1.0)
    static let mangoOrange = UIColor(red: 255/255, green: 165/255, blue: 2/255, alpha: 1.0)
    static let green = UIColor(red: 118/255, green: 215/255, blue: 196/255, alpha: 1.0)
    static let red = UIColor(red: 255/255, green: 84/255, blue: 112/255, alpha: 1.0)
    static let orange = UIColor(red: 255/255, green: 165/255, blue: 0, alpha: 1.0)
    static let yellow = UIColor(red: 255/255, green: 230/255, blue: 109/255, alpha: 1.0)
    static let purple = UIColor(red: 160/255, green: 92/255, blue: 240/255, alpha: 1.0)
    static let avocadoGreen = UIColor(red: 84/255, green: 130/255, blue: 53/255, alpha: 1.0)
}


let strawberry = Fruit(name: "Strawberries", image: "strawberry", pricePerEach: 0.5, units: "1 lb", backgroundColor: .strawberryRed, description: "Sweet and juicy strawberries, perfect for desserts and snacks.")
let pineapple = Fruit(name: "Pineapples", image: "pineapple", pricePerEach: 2.99, units: "each", backgroundColor: .pineappleYellow, description: "Tropical and refreshing pineapples, a great addition to fruit salads.")
let blueberry = Fruit(name: "Blueberries", image: "blueberry", pricePerEach: 0.25, units: "1 lb", backgroundColor: .blueberryBlue, description: "Plump and antioxidant-rich blueberries, ideal for smoothies and muffins.")
let dragonFruit = Fruit(name: "Dragon Fruits", image: "dragonfruit", pricePerEach: 4.99, units: "each", backgroundColor: .dragonFruitPink, description: "Exotic and vibrant dragon fruits with a subtly sweet flavor.")
let lychee = Fruit(name: "Lychee", image: "lychee", pricePerEach: 1.0, units: "each", backgroundColor: .lycheePink, description: "Delicate and fragrant lychee fruits, perfect for a refreshing treat.")
let mango = Fruit(name: "Mangos", image: "mango", pricePerEach: 1.5, units: "each", backgroundColor: .mangoOrange, description: "Juicy and tropical mangos, a delicious addition to salsas and smoothies.")
let kiwi = Fruit(name: "Kiwi", image: "kiwi", pricePerEach: 1.2, units: "each", backgroundColor: .green, description: "Tangy and vibrant kiwi, an excellent source of vitamin C.")
let watermelon = Fruit(name: "Watermelon", image: "watermelon", pricePerEach: 5.99, units: "each", backgroundColor: .red, description: "Summer-favorite watermelon, perfect for hydrating on hot days.")
let orange = Fruit(name: "Oranges", image: "orange", pricePerEach: 0.75, units: "each", backgroundColor: .orange, description: "Sweet and citrusy oranges, great for fresh juice.")
let apple = Fruit(name: "Apples", image: "apple", pricePerEach: 0.8, units: "each", backgroundColor: .red, description: "Crisp and crunchy apples, a classic snack choice.")
let banana = Fruit(name: "Bananas", image: "banana", pricePerEach: 0.35, units: "each", backgroundColor: .yellow, description: "Creamy and potassium-rich bananas, perfect for smoothies.")
let grape = Fruit(name: "Grapes", image: "grape", pricePerEach: 2.5, units: "1 lb", backgroundColor: .purple, description: "Sweet and bite-sized grapes, a healthy and convenient snack.")
let avocado = Fruit(name: "Avocado", image: "avocado", pricePerEach: 1.99, units: "each", backgroundColor: .avocadoGreen, description: "Creamy and nutrient-packed avocados, great for guacamole and sandwiches.")

let mockFruitData: [Fruit] = [
    strawberry, pineapple, blueberry, dragonFruit, lychee, mango, kiwi, watermelon, orange, apple, banana, grape, avocado
]
