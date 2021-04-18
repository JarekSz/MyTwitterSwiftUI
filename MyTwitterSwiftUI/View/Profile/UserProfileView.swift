//
//  UserProfileView.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk on 4/11/21.
//

import SwiftUI

struct UserProfileView: View {
    let user: User
//    var viewModel: ProfileViewModel
    
    init(user: User) {
        self.user = user
//        self.viewModel = ProfileViewModel(user: user)
    }
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
                    .padding()
                                
                ForEach(0..<5) { tweet in
                    TweetCell()
                        .padding()
                }
            }
            .navigationTitle("batman")
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        let user = User(dictionary: [
                            "id": "123",
                            "username": "batman",
                            "profileImageUrl": "batman",
                            "fullname": "The Batman",
                            "email": "aa@aaa.net",
                            "stats": UserStats(followers: 1, following: 2),
                            "bio": "My biography"])
        UserProfileView(user: user)
    }
}
