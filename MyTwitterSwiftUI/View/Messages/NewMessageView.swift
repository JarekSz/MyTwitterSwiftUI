//
//  NewMessageView.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk iMac on 4/11/21.
//

import SwiftUI

struct NewMessageView: View {
    @State var searchText = ""
//    @Binding var show: Bool
//    @Binding var startChat: Bool
    var user: User?
//    @ObservedObject var viewModel = SearchViewModel(config: .newMessage)
    
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()

            let user = User(dictionary: [
                                "id": "123",
                                "username": "batman",
                                "profileImageUrl": "batman",
                                "fullname": "The Batman",
                                "email": "aa@aaa.net",
                                "stats": UserStats(followers: 1, following: 2),
                                "bio": "My biography"])

            VStack(alignment: .leading) {
                Button(action: {}, label: {
                    UserCell(user: user)
                })
            }.padding(.leading)
        }
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        let user = User(dictionary: [
                            "id": "123",
                            "username": "batman",
                            "profileImageUrl": "batman",
                            "fullname": "The Batman",
                            "email": "aa@aaa.net",
                            "stats": UserStats(followers: 1, following: 2),
                            "bio": "My biography"])
        NewMessageView(user: user)
    }
}
