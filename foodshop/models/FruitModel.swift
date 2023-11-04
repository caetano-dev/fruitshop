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
let strawberry = Fruit(name: "Strawberries", image: "strawberry", pricePerEach: 0.5, units: "1 lb", backgroundColor: .strawberryRed, description: "Strawberries are a delicious and versatile fruit. They are known for their sweet and juicy taste, making them a perfect addition to desserts, smoothies, and salads. Strawberries are also rich in antioxidants and vitamin C, promoting overall health and well-being.")
let pineapple = Fruit(name: "Pineapples", image: "pineapple", pricePerEach: 2.99, units: "each", backgroundColor: .pineappleYellow, description: "Pineapples are a tropical delight, known for their sweet and tangy flavor. They are a refreshing fruit that can be enjoyed on its own or added to fruit salads and beverages. Pineapples are also a good source of vitamin C and manganese, promoting immune health and digestion.")
let blueberry = Fruit(name: "Blueberries", image: "blueberry", pricePerEach: 0.25, units: "1 lb", backgroundColor: .blueberryBlue, description: "Blueberries are small, plump, and bursting with flavor. They are packed with antioxidants, making them a superfood that supports brain health and may help reduce the risk of chronic diseases. Blueberries are perfect for adding to your morning cereal, pancakes, or as a topping for desserts.")
let dragonFruit = Fruit(name: "Dragon Fruits", image: "dragonfruit", pricePerEach: 4.99, units: "each", backgroundColor: .dragonFruitPink, description: "Dragon fruits are visually striking with their bright pink skin and white flesh speckled with tiny black seeds. They have a subtle, sweet flavor and are a great source of fiber and vitamin C. Dragon fruits are perfect for snacking, making smoothie bowls, or adding an exotic touch to your fruit platter.")
let lychee = Fruit(name: "Lychee", image: "lychee", pricePerEach: 1.0, units: "each", backgroundColor: .lycheePink, description: "Lychees are small, aromatic fruits with a sweet and floral flavor. They are commonly enjoyed fresh and are a good source of vitamin C and fiber. Lychees are a delightful treat, perfect for indulging in their unique taste and texture.")
let mango = Fruit(name: "Mangos", image: "mango", pricePerEach: 1.5, units: "each", backgroundColor: .mangoOrange, description: "Mangos are known for their sweet and tropical flavor. They are a rich source of vitamins A and C, promoting skin health and immune support. Mangos can be enjoyed on their own, added to salsas, or blended into refreshing smoothies.")
let kiwi = Fruit(name: "Kiwi", image: "kiwi", pricePerEach: 1.2, units: "each", backgroundColor: .green, description: "Kiwis are small but mighty, packed with vitamins and minerals. They have a tart, tangy flavor and are a great source of vitamin C and dietary fiber. Kiwis are a fantastic addition to fruit salads, desserts, and can even be eaten with the skin for added nutrition.")
let watermelon = Fruit(name: "Watermelon", image: "watermelon", pricePerEach: 5.99, units: "each", backgroundColor: .red, description: "Watermelons are a classic summer favorite, known for their sweet and juicy flesh. They are incredibly hydrating and a good source of vitamins A and C. Watermelons are perfect for staying refreshed on hot days and are a delightful addition to picnics and BBQs.")
let orange = Fruit(name: "Oranges", image: "orange", pricePerEach: 0.75, units: "each", backgroundColor: .orange, description: "Oranges are a popular citrus fruit celebrated for their sweet and tangy flavor. They are an excellent source of vitamin C, providing a natural immune boost. Oranges are ideal for fresh orange juice, snacking, and adding a burst of citrus to your dishes.")
let apple = Fruit(name: "Apples", image: "apple", pricePerEach: 0.8, units: "each", backgroundColor: .red, description: "Apples are a classic fruit enjoyed worldwide. They come in various varieties, offering a range of flavors from sweet to tart. Apples are a good source of dietary fiber and vitamin C. They are perfect for snacking, making pies, or adding to salads.")
let banana = Fruit(name: "Bananas", image: "banana", pricePerEach: 0.35, units: "each", backgroundColor: .yellow, description: "Bananas are a popular and versatile fruit known for their creamy texture and natural sweetness. They are an excellent source of potassium, essential for heart health. Bananas are perfect for smoothies, as a quick snack, or adding natural sweetness to your baked goods.")
let grape = Fruit(name: "Grapes", image: "grape", pricePerEach: 2.5, units: "1 lb", backgroundColor: .purple, description: "Grapes are small, sweet, and come in various colors, including red, green, and black. They are a rich source of antioxidants, promoting heart health and overall well-being. Grapes are a convenient and healthy snack, and they make a lovely addition to fruit platters.")
let avocado = Fruit(name: "Avocado", image: "avocado", pricePerEach: 1.99, units: "each", backgroundColor: .avocadoGreen, description: "Avocados are known for their creamy, buttery texture and mild flavor. They are a nutrient powerhouse, rich in healthy fats, fiber, and vitamins. Avocados are ideal for making guacamole, adding to sandwiches, and incorporating into a wide range of dishes.")

let mockFruitData: [Fruit] = [
    strawberry, pineapple, blueberry, dragonFruit, lychee, mango, kiwi, watermelon, orange, apple, banana, grape, avocado
]
