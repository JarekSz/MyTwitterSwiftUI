//
//  ConversationsView.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk iMac on 4/10/21.
//

import SwiftUI

struct ConversationsView: View {
    @State var isShowingNewMessageView = false
    @State var showChat = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing, content: {
            NavigationLink(destination: ChatView(),
                           isActive: $showChat,
                           label: {} )

            ScrollView {
                VStack {
                    ForEach(0..<10) { _ in
                        NavigationLink(
                            destination: ChatView(),
                            label: {
                                ConversationCell()
                            })
                        
                    }
                    .padding()
                }
            }
            
            Button(action: { self.isShowingNewMessageView.toggle() },
                   label: {
                    Image(systemName: "envelope")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 32, height: 32)
                        .padding()
                   })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
                .sheet(isPresented: $isShowingNewMessageView, content: {
                    SearchView()
                })
        })
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}
