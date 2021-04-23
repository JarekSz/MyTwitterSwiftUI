//
//  ConversationsView.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk iMac on 4/10/21.
//

import SwiftUI
import Firebase

struct ConversationsView: View {
    @State var isShowingNewMessageView = false
    @State var showChat = false
    var user: User?
//    @ObservedObject var viewModel = ConversationsViewModel()
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            
//            if let user = user {
//                NavigationLink(destination: ChatView()),
//                               isActive: $showChat,
//                               label: {} )
//            }
            
            ScrollView {
                VStack {
                    ForEach(0..<5) { message in
//                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ConversationCell()
                    }
                    .padding()
//                    }
                }
            }
            
            HStack {
                Spacer()
                
                Button(action: { self.isShowingNewMessageView.toggle() }, label: {
                    Image(systemName: "envelope")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28, height: 28)
                        .padding()
                })
                .background(Color(.systemBlue))
                .foregroundColor(.white)
                .clipShape(Circle())
                .padding()
                .sheet(isPresented: $isShowingNewMessageView, content: {
                    NewMessageView(searchText: "Searching", user: user)
                })
            }
            .navigationTitle("Messages")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        let user = User(dictionary: [
                            "id": "123",
                            "username": "batman",
                            "profileImageUrl": "batman",
                            "fullname": "The Batman",
                            "email": "aa@aaa.net",
                            "stats": UserStats(followers: 1, following: 2),
                            "bio": "My biography"])
        
//        let COLLECTION_USERS = Firestore.firestore().collection("users")
//        let doc = COLLECTION_USERS.document()
//
//        print("\(doc)")

        ConversationsView(isShowingNewMessageView: true, showChat: true, user: user)
    }
}
