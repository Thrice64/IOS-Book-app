//
//  ProfileEditor.swift
//  Group6Proj
//
//  Created by Matthew Mendoza on 8/1/22.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var body: some View {
        List {
            HStack {
                Text("User Name: ")
                    .bold()
                Divider()
                TextField("User Name: ", text: $profile.username)
            }
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notification")
                    .bold()
            }
            VStack {
                Text("Preferred Genre Photo")
                Picker("Preferred Genre Photo", selection: $profile.genrePhoto) {
                    ForEach(Profile.Genre.allCases) {
                        genre in Text(genre.rawValue).tag(genre)
                    }
                }
                .pickerStyle(.segmented)
            }
            DatePicker(selection: $profile.updateDate, displayedComponents: .date) {
                Text("Last Updated")
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
