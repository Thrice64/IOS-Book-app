//
//  Book.swift
//  Group6Proj
//
//  Created by Matthew Mendoza on 6/18/22.
//

import Foundation
import SwiftUI

struct Book: Hashable, Codable,Identifiable {
    var id: Int
    var name: String
    var authorName: String
    var price: String
    var description: String
    var isFavorite: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case thriller  = "Thriller"
        case mystery = "Mystery"
        case drama = "Drama"
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
