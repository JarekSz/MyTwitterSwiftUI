//
//  ProfileViewModel.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk on 4/17/21.
//

import SwiftUI
import Firebase

class ProfileViewModel: ObservableObject {
    let user: User
    @Published var isFollowed = false
    @Published var userTweets = [Tweet]()
    @Published var likedTweets = [Tweet]()

    init(user: User) {
        self.user = user
        checkIfUserIsFollowed()
        fetchUserTweets()
    }
    
    func follow() {
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        let followingRef = COLLECTION_FOLLOWING.document(currentUid).collection("user-following")
        let followersRef = COLLECTION_FOLLOWERS.document(user.id).collection("user-followers")
        
        followingRef.document(user.id).setData([:]) { _ in
            followersRef.document(currentUid).setData([:]) { _ in
                self.isFollowed = true
            }
        }
    }
    
    func unfollow() {
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        
        let followingRef = COLLECTION_FOLLOWING.document(currentUid).collection("user-following")
        let followersRef = COLLECTION_FOLLOWERS.document(user.id).collection("user-followers")

        followingRef.document(user.id).delete { _ in
            followersRef.document(currentUid).delete { _ in
                self.isFollowed = false
            }
        }
    }
    
    func checkIfUserIsFollowed() {
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        
        let followingRef = COLLECTION_FOLLOWING.document(currentUid).collection("user-following")

        followingRef.document(user.id).getDocument { (snapshot, _) in
            guard let isFollowed = snapshot?.exists else { return }
            self.isFollowed = isFollowed
        }
    }
    
    func fetchUserTweets() {
        COLLECTION_TWEETS.whereField("uid", isEqualTo: user.id).getDocuments { (snapshot, _) in
            guard let documents = snapshot?.documents else { return }
            documents.forEach { (document) in
                print("DEBUG: Doc data is \(document.data())")
            }
        }
    }
}
