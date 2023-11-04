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
    
    init(name: String, image: String, pricePerEach: Double, units: String, backgroundColor: UIColor) {
        self.name = name
        self.image = image
        self.pricePerEach = pricePerEach
        self.units = units
        self.backgroundColor = backgroundColor
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

// Usage example:
let strawberry = Fruit(name: "Strawberries", image: "strawberry", pricePerEach: 0.5, units: "1 lb", backgroundColor: .strawberryRed)
let pineapple = Fruit(name: "Pineapples", image: "pineapple", pricePerEach: 2.99, units: "each", backgroundColor: .pineappleYellow)
let blueberry = Fruit(name: "Blueberries", image: "blueberry", pricePerEach: 0.25, units: "1 lb", backgroundColor: .blueberryBlue)
let dragonFruit = Fruit(name: "Dragon Fruits", image: "dragonfruit", pricePerEach: 4.99, units: "each", backgroundColor: .dragonFruitPink)
let lychee = Fruit(name: "Lychee", image: "lychee", pricePerEach: 1.0, units: "each", backgroundColor: .lycheePink)
let mango = Fruit(name: "Mangos", image: "mango", pricePerEach: 1.5, units: "each", backgroundColor: .mangoOrange)
let kiwi = Fruit(name: "Kiwi", image: "kiwi", pricePerEach: 1.2, units: "each", backgroundColor: .green)
let watermelon = Fruit(name: "Watermelon", image: "watermelon", pricePerEach: 5.99, units: "each", backgroundColor: .red)
let orange = Fruit(name: "Oranges", image: "orange", pricePerEach: 0.75, units: "each", backgroundColor: .orange)
let apple = Fruit(name: "Apples", image: "apple", pricePerEach: 0.8, units: "each", backgroundColor: .red)
let banana = Fruit(name: "Bananas", image: "banana", pricePerEach: 0.35, units: "each", backgroundColor: .yellow)
let grape = Fruit(name: "Grapes", image: "grape", pricePerEach: 2.5, units: "1 lb", backgroundColor: .purple)
let avocado = Fruit(name: "Avocado", image: "avocado", pricePerEach: 1.99, units: "each", backgroundColor: .avocadoGreen)

let mockFruitData: [Fruit] = [
    strawberry, pineapple, blueberry, dragonFruit, lychee, mango, kiwi, watermelon, orange, apple, banana, grape, avocado
]
