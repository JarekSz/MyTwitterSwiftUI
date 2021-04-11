//
//  SearchView.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk iMac on 4/10/21.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            
            VStack {
                ForEach(0..<6) { _ in
                    UserCell()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
