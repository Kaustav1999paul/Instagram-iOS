//
//  AuthServices.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 02/06/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestoreSwift
import Firebase

class AuthService {
    
    @Published var userSession : FirebaseAuth.User?
    @Published var currentUser : User?
    static let shared = AuthService()

    init() {
        Task { try await loadUserData() }
    }
    
    @MainActor
    func login(withEmail email : String, password: String) async throws{
        do{
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            try await loadUserData()
        }catch{
            print("DEBUG: \(error.localizedDescription)")
        }

    }
    
    @MainActor
    func createUser(withEmail email : String, password: String, username: String) async throws{
        do{
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            await uploadUserData(uid: result.user.uid, username: username, email: email)
        }catch{
            print("DEBUG: \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func loadUserData() async throws{
        self.userSession = Auth.auth().currentUser
        guard let currentUser = userSession?.uid else {return}
        let snapshot = try await Firestore.firestore().collection("user").document(currentUser).getDocument()
        self.currentUser = try? snapshot.data(as: User.self)
    }

    func signout(){
        try? Auth.auth().signOut()
        self.userSession = nil
    }
    
    private func uploadUserData(uid: String, username: String, email: String) async {
        let user = User(id: uid, username: username, email: email)
        self.currentUser = user
        guard let encodedUser = try? Firestore.Encoder().encode(user) else {return}
        try? await Firestore.firestore().collection("user").document(user.id).setData(encodedUser)
    }
}
