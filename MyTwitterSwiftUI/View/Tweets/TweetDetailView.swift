//
//  TweetDetailView.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk on 5/12/21.
//

import SwiftUI

struct TweetDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(28)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Bruce Wayne")
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("@batman")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)

                }
            }
            
            Text("It's not who I am underneath, but what I do that defines me")
                .font(.system(size: 22))
            
            Text("7:22 PM • 05/01/2020")
                .font(.system(size: 14))
                .foregroundColor(.gray)
            
            Divider()
            
            HStack(spacing: 12) {
                HStack(spacing: 4) {
                    Text("0")
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("Retweets")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                }
                
                HStack(spacing: 4) {
                    Text("0")
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("Likes")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                }
            }
            
            Divider()
        }
    }
}

struct TweetDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TweetDetailView()
    }
}
