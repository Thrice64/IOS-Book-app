//
//  ContentView.swift
//  Group6Proj
//
//  Created by Mendoza, Matthew E on 6/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            CategoryHome()
                .tabItem {
                    Label("Category Home", systemImage: "star")
                }
            BookList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
