//
//  CategoryItem.swift
//  Group6Proj
//
//  Created by Matthew Mendoza on 7/10/22.
//

import SwiftUI

struct CategoryItem: View {
    var book: Book
    
    var body: some View {
        VStack(alignment: .leading) {
            book.image
                .resizable()
                .frame(width: 160, height: 160)
                .cornerRadius(10)
            Text(book.name)
                .foregroundColor(.primary)
                .font(.caption)
                .frame(width: 160)
            
        }
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(book: ModelData().books[1])
    }
}
