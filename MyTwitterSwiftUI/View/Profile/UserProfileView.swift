//
//  UserProfileView.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk on 4/11/21.
//

import SwiftUI

struct UserProfileView: View {
    let user: User
    @ObservedObject var viewModel: ProfileViewModel
    
    init(user: User) {
        self.user = user
        self.viewModel = ProfileViewModel(user: user)
    }
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView(isFollowed: $viewModel.isFollowed, viewModel: viewModel)
                    .padding()
                                
                ForEach(0..<5) { item in
//                    TweetCell(tweet: tweet)
//                        .padding()
                }
            }
            .navigationTitle("batman")
        }
    }
}
