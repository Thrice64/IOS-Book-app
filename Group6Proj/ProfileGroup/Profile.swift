//
//  Profile.swift
//  Group6Proj
//
//  Created by Matthew Mendoza on 7/15/22.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var genrePhoto = Genre.drama
    var updateDate = Date()
    
    
    static let `default` = Profile(username: "David")
    
    enum Genre: String, Identifiable, CaseIterable {
        case drama = "🎭"
        case mystery = "🕵🏻‍♂️"
        case thriller = "🥷🏻"
        
        var id: String {rawValue}
    }
}
