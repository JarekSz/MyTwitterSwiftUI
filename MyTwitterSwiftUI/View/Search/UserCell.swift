//
//  UserCell.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk iMac on 4/10/21.
//

import SwiftUI
//import Kingfisher

struct UserCell: View {
    let user: User
    
    var body: some View {
        HStack(spacing: 12) {
            Image(user.profileImageUrl)
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 56, height: 56)
                .cornerRadius(28)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(user.username)
                    .font(.system(size: 14, weight: .semibold))
                
                Text(user.fullname)
                    .font(.system(size: 14))
            }
            .foregroundColor(.black)
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        let user = User(dictionary: [
                            "id": "123",
                            "username": "batman",
                            "profileImageUrl": "batman",
                            "fullname": "The Batman",
                            "email": "aa@aaa.net",
                            "stats": UserStats(followers: 1, following: 2),
                            "bio": "My biography"])

        UserCell(user: user)
    }
}
