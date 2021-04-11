//
//  UserCell.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk iMac on 4/10/21.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image("venom-10")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 56, height: 56)
                .cornerRadius(28)
                .padding(.leading)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("venom")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("Bruce Wayne")
                    .font(.system(size: 14))
            }
            .foregroundColor(.black)
            
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
