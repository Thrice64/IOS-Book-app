//
//  BookList.swift
//  Group6Proj
//
//  Created by Matthew Mendoza on 6/18/22.
//

import SwiftUI

struct BookList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = true
    
    var filteredBooks: [Book] {
        modelData.books.filter {
            book in
            (!showFavoriteOnly || book.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorites Only")
                }
                ForEach(filteredBooks) {
                    book in NavigationLink {
                        BookDetail(book: book)
                    } label: {
                        BookRow(book: book)
                    }
                }
            }
            .navigationTitle("Books")
        }
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        BookList()
            .environmentObject(ModelData())
    }
}
