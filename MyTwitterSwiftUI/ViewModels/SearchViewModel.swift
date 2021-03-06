//
//  SearchViewModel.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk on 4/17/21.
//

import SwiftUI
import Firebase

class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        fetchUsers()
    }
    
    func fetchUsers() {
        COLLECTION_USERS.getDocuments { (snapshot, _) in
            guard let documents = snapshot?.documents else { return }
            
//            self.users = documents.map({ User(dictionary: $0.data() })
            documents.forEach { document in
                let user = User(dictionary: document.data())
                self.users.append(user)
            }
            
//            print("DEBUG: users \(users)")
        }
    }
}
