//
//  TweetCell.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk iMac on 4/10/21.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 56, height: 56)
                    .cornerRadius(28)
                    .padding(.leading)
                
                VStack(alignment: .leading) {
                    Text("Bruce Wayne")
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text("It's not who I am")
                        .foregroundColor(.gray)
                    
                    Text("Or that")
                        .foregroundColor(.gray)
                }
                
                Spacer()
            }
        }
    }
}

struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
    }
}
