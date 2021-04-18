//
//  ProfileHeaderView.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk on 4/11/21.
//

import SwiftUI
//import Kingfisher

struct ProfileHeaderView: View {
//    @ObservedObject var viewModel: ProfileViewModel
//    @Binding var editProfilePresented: Bool
    @State var selectedFilter: TweetFilterOptions = .tweets
//    @Binding var isFollowed: Bool
//    let viewModel: ProfileViewModel
    
    var body: some View {
        VStack {
            Image("batman")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 120, height: 120)
                .cornerRadius(120 / 2)
                .shadow(color: .black, radius: 6, x: 0.0, y: 0.0)
            
            Text("Full Name")
                .font(.system(size: 16, weight: .semibold))
                .padding(.top, 8)
            
            Text("@batman")
                .font(.subheadline)
                .foregroundColor(.gray)
                        
            HStack(spacing: 40) {
                VStack {
                    Text("11")
                        .font(.system(size: 16)).bold()
                    
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                
                VStack {
                    Text("11")
                        .font(.system(size: 16)).bold()
                    
                    Text("Following")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }.padding()
            
            ProfileActionButtonView(isCurrentUser: true)
            
            FilterButtonView(selectedOption: $selectedFilter)
                .padding()
            
            Spacer()
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
