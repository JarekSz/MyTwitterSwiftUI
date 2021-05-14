//
//  TweetActionViewModel.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk iMac on 5/13/21.
//

import SwiftUI
import Firebase

class TweetActionViewModel: ObservableObject {
    var tweet: Tweet
    @Published var didLike = false
    
    init(tweet: Tweet) {
        self.tweet = tweet
        checkIfUserLikedTweet()
    }
    func likeTweet() {
        guard let uid = AuthViewModel.shared.userSession?.uid else { return }
        let tweetLikesRef = COLLECTION_TWEETS.document(tweet.id).collection("tweet-likes")
        let userLikesRef = COLLECTION_USERS.document(uid).collection("user-likes")

        COLLECTION_TWEETS.document(tweet.id).updateData(["likes" : tweet.likes + 1])

        tweetLikesRef.document(uid).setData([:]) { _ in
            userLikesRef.document(self.tweet.id).setData([:]) { _ in
                self.didLike = true
            }
        }
    }
    
    func unlikeTweet() {
        guard let uid = AuthViewModel.shared.userSession?.uid else { return }
        let tweetLikesRef = COLLECTION_TWEETS.document(tweet.id).collection("tweet-likes")
        let userLikesRef = COLLECTION_USERS.document(uid).collection("user-likes")

        COLLECTION_TWEETS.document(tweet.id).updateData(["likes": tweet.likes - 1]) { _ in
            tweetLikesRef.document(uid).delete { _ in
                userLikesRef.document(self.tweet.id).delete { _ in
                    self.didLike = false
                }
            }
        }
    }
    
    func checkIfUserLikedTweet() {
        /// print all tweets
//        COLLECTION_TWEETS.getDocuments { (snapshot, _) in
//            guard let documents = snapshot?.documents else { return }
//            documents.forEach { document in
//                let tweet = Tweet(dictionary: document.data())
//                print("DEBUG: tweet \(tweet.caption)")
//            }
//        }
        guard let uid = AuthViewModel.shared.userSession?.uid else { return }
        let userLikesRef = COLLECTION_USERS.document(uid).collection("user-likes").document(tweet.id)
        
        userLikesRef.getDocument { (snapshot, _) in
            guard let didLike = snapshot?.exists else { return }
            self.didLike = didLike
        }
    }
}
