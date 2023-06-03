//
//  UserService.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 03/06/23.
//

import Foundation
import Firebase

struct UserService{
   
    
    static func fetchAllUser() async throws -> [User] {
        
        let snapshot = try await Firestore.firestore().collection("user").getDocuments()
        return snapshot.documents.compactMap({try? $0.data(as: User.self) })
    }
}
