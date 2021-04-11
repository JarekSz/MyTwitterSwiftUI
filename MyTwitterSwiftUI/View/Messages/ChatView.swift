//
//  ChatView.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk on 4/10/21.
//

import SwiftUI

struct ChatView: View {
    @State var messageText: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 12, content: {
                    ForEach(MOCK_MESSAGES) { message in
                        HStack {
                            if message.currentUser {
                                Spacer()
                                Text(message.messageText)
                                    .padding()
                                    .background(Color.blue)
                                    .clipShape(ChatBubble(isFromCurrentUser: true))
                                    .foregroundColor(.white)
                                    .padding(.horizontal)
                            } else {
                                Image(message.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                    .padding(.leading)
                                
                                Text(message.messageText)
                                    .padding()
                                    .background(Color(.systemGray4))
                                    .clipShape(ChatBubble(isFromCurrentUser: false))
                                    .foregroundColor(.black)
                                    .padding(.trailing)
                                
                                Spacer()
                           }
                        }
                    }
                })
            }
            
            MessageInputView(messageText: $messageText)
                .padding()
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
