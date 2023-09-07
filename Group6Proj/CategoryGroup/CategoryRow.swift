//
//  CategoryRow.swift
//  Group6Proj
//
//  Created by Matthew Mendoza on 7/10/22.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Book]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading,15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 6) {
                    ForEach(items) {
                        Book in NavigationLink {
                            BookDetail(book: Book)
                        } label: {
                            CategoryItem(book: Book)
                        }
                    }
                }
            }
            .frame(height: 200)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var books = ModelData().books
    static var previews: some View {
        CategoryRow(categoryName: books[2].category.rawValue, items: Array(books.prefix(3)))
    }
}
