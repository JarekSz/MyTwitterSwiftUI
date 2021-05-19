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
    @State var selectedFilter: TweetFilterOptions = .tweets
    
    init(user: User) {
        self.user = user
        self.viewModel = ProfileViewModel(user: user)
    }
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ProfileHeaderView(isFollowed: $viewModel.isFollowed, viewModel: viewModel)
                    .padding()
                                
                ForEach(viewModel.userTweets) { tweet in
                    TweetCell(tweet: tweet)
                        .padding()
                }
            }
            .animation(.spring())
            .transition(.move(edge: .leading))
            
            .navigationTitle(user.username)
        }
    }
}
