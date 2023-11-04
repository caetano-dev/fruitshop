//
//  ColumnModel.swift
//  foodshop
//
//  Created by Pedro Caetano on 04/11/23.
//

import Foundation
import SwiftUI

struct ColumnModel {
    var id = UUID()
    var item: GridItem
    static let columns = [
        ColumnModel(item: GridItem()),
        ColumnModel(item: GridItem())
    ]
}
