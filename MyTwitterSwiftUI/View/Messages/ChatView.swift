//
//  ChatView.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk on 4/10/21.
//

import SwiftUI

struct ChatView: View {
//    let user: User
//    @ObservedObject var viewModel: ChatViewModel
//    @State var messageText: String = ""
    
//    init(user: User) {
//        self.user = user
//        self.viewModel = ChatViewModel(user: user)
//    }
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    Text("chat view")
                }
            }
            .padding(.top)
            
//            MessageInputView(messageText: $messageText, action: sendMessage)
//                .padding()
            
        }
        .navigationTitle("Chat View")
    }
    
//    func sendMessage() {
//        viewModel.sendMessage(messageText)
//        messageText = ""
//    }
}


