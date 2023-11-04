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
    static let strawberryRed = UIColor(red: 232/255, green: 31/255, blue: 73/255, alpha: 1.0)
    static let pineappleYellow = UIColor(red: 255/255, green: 204/255, blue: 0, alpha: 1.0)
    static let blueberryBlue = UIColor(red: 0, green: 122/255, blue: 255/255, alpha: 1.0)
    static let dragonFruitPink = UIColor(red: 226/255, green: 43/255, blue: 138/255, alpha: 1.0)
    static let lycheePink = UIColor(red: 252/255, green: 188/255, blue: 188/255, alpha: 1.0)
    static let mangoOrange = UIColor(red: 255/255, green: 165/255, blue: 0, alpha: 1.0)
}

// Usage example:
let strawberry = Fruit(name: "Strawberries", image: "strawberry", pricePerEach: 0.5, units: "1 lb", backgroundColor: .strawberryRed)
let pineapple = Fruit(name: "Pineapples", image: "pineapple", pricePerEach: 2.99, units: "each", backgroundColor: .pineappleYellow)
let blueberry = Fruit(name: "Blueberries", image: "blueberry", pricePerEach: 0.25, units: "1 lb", backgroundColor: .blueberryBlue)
let dragonFruit = Fruit(name: "Dragon Fruits", image: "dragonfruit", pricePerEach: 4.99, units: "each", backgroundColor: .dragonFruitPink)
let lychee = Fruit(name: "Lychee", image: "lychee", pricePerEach: 1.0, units: "each", backgroundColor: .lycheePink)
let mango = Fruit(name: "Mangos", image: "mango", pricePerEach: 1.5, units: "each", backgroundColor: .mangoOrange)

let mockFruitData: [Fruit] = [
    strawberry, pineapple, blueberry,dragonFruit,lychee,mango,
]
