//
//  ProfileViewModel.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk on 4/17/21.
//

import SwiftUI
import Firebase

class ProfileViewModel {
    let user: User
//    @Published var isFollowed = false
    
    init(user: User) {
        self.user = user
    }
    
    func follow() {
//        guard let currentUid = Auth.auth().currentUser?.uid else { return }
//
//        COLLECTION_FOLLOWING.document(currentUid).collection("user-following").document(user.id)
//            .setData([:]) { _ in
//                self.isFollowed = true
//            }
    }
    
    func unfollow() {
        
    }
}
