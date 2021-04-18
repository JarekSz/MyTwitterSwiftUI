//
//  TextArea.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk on 4/17/21.
//

import SwiftUI

struct TextArea: View {
    var text: String
    let placeholder: String
    
    init(_ placeholder: String, text: String) {
        self.text = text
        self.placeholder = placeholder
        UITextView.appearance().backgroundColor = .clear
    }
    var body: some View {
        ZStack(alignment: .topLeading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
            
            Text(text)
                .padding(4)
        }.font(.body)
    }
}

struct TextArea_Previews: PreviewProvider {
    static var previews: some View {
        TextArea("must enter", text: "You entered")
    }
}
