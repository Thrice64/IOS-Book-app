//
//  BookImage.swift
//  Group6Proj
//
//  Created by Matthew Mendoza on 6/18/22.
//

import SwiftUI

struct BookImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(.white,
                lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct BookImage_Previews: PreviewProvider {
    static var previews: some View {
        BookImage(image: Image("hp5"))
    }
}
