//
//  ProfileSummary.swift
//  Group6Proj
//
//  Created by Matthew Mendoza on 7/15/22.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(profile.username)
                .bold()
                .font(.title)
            Text("Notifications: \(profile.prefersNotifications ? "On":"Off")")
            Text("Preffered Genre: \(profile.genrePhoto.rawValue)")
            Text("Last update Date: \(profile.updateDate)")
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile:Profile.default)
    }
}
