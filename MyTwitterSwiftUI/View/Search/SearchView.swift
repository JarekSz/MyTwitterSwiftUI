//
//  SearchView.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk iMac on 4/10/21.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
//    @ObservedObject var viewModel = SearchViewModel(config: .search)

    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()

            VStack(alignment: .leading) {
                ForEach(0..<5) { _ in
                    HStack { Spacer() }
                    
//                    NavigationLink(
//                        destination: LazyView(UserProfileView(user: user)),
//                        label: {
//                            UserCell(user: user)
//                        })
                }
            }
            .padding(.leading)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
