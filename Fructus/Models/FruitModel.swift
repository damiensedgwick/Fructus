//
//  FruitModel.swift
//  Fructus
//
//  Created by Damien K. Sedgwick on 14/06/2021.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
