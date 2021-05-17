//
//  TweetCell.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk iMac on 4/10/21.
//

import SwiftUI
import Kingfisher

struct TweetCell: View {
    let tweet: Tweet
    let actionView: TweetActionsView
    
    init(tweet: Tweet) {
        self.tweet = tweet
        // actionView initialized only once
        self.actionView = TweetActionsView(tweet: tweet)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                KFImage(URL(string: tweet.profileImageUrl))
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(28)
                    .padding(.leading)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(tweet.fullname)
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundColor(.black)
                        
                        Text("@\(tweet.username) •")
                            .foregroundColor(.gray)
                        
                        Text(tweet.timestampString)
                            .foregroundColor(.gray)
                    }
                    
                    Text(tweet.caption)
                        .foregroundColor(.black)
                }
            }
            .padding(.bottom)
            .padding(.trailing)
            
            actionView
            
            Divider()
        }
        .padding(.leading, -16)
    }
}

