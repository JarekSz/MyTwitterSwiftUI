//
//  AuthViewModel.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk on 4/17/21.
//

import SwiftUI
import Firebase

class AuthViewModel {
    @Published var userSession: FirebaseAuth.User?
    @Published var isAuthenticating = false
    @Published var error: Error?
    @Published var user: User?

//    static let shared = AuthViewModel()
    
    init() {
        userSession = Auth.auth().currentUser
//        fetchUser()
    }
    
    func login(withEmail email: String, password: String) {
//        Auth.auth().signIn(withEmail: email, password: password) {
//            if let error = error {
//                print("DEBUG: Failed to login: \(error.localizedDescription)")
//                return
//            }
//        }
    }
}
