//
//  AuthViewModel.swift
//  MyTwitterSwiftUI
//
//  Created by Jaroslaw Szymczyk on 4/17/21.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var isAuthenticating = false
    @Published var error: Error?
    @Published var user: User?

//    static let shared = AuthViewModel()
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) {
        
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: Failed to login: \(error.localizedDescription)")
                return
            }
            
            self.userSession = result?.user
        }
    }
    
    func registerUser(email: String, password: String, username: String, fullname:String, profileImage: UIImage) {
        
        print("Email = \(email)")
        print("Password = \(password)")
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            print("DEBUG: Error: \(error?.localizedDescription)")
            return
        }
        
        print("DEBUG: Successfully registered.")
    }
    
    func signOut() {
        userSession = nil
        try? Auth.auth().signOut()
    }
}
