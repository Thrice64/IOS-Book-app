//
//  BookDetail.swift
//  Group6Proj
//
//  Created by Fern on 6/25/22.
//

import SwiftUI

struct BookDetail: View {
    @EnvironmentObject var modelData: ModelData
    var book: Book
    
    var bookIndex: Int {
        modelData.books.firstIndex(where: { $0.id == book.id})!
    }
    
    var body: some View {
        ScrollView {
            BookImage(image: book.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                
                HStack {
                    Text(book.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.books [bookIndex].isFavorite)
                }
                
                HStack {
                    Text(book.authorName)
                    Spacer()
                    Text(book.price)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
            
                Divider()
            
                Text("About \(book.name)")
                    .font(.title2)
                Text(book.description)
            }
            .padding()
        }
        .navigationTitle(book.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BookDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        BookDetail(book: modelData.books[4])
            .environmentObject(modelData)
    }
}
