//
//  Group6ProjApp.swift
//  Group6Proj
//
//  Created by Mendoza, Matthew E on 6/10/22.
//

import SwiftUI

@main
struct Group6ProjApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
