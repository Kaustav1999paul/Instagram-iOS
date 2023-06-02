//
//  User.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 01/06/23.
//

import Foundation

struct User : Identifiable, Hashable, Codable{
    let id: String
    var username : String
    var profileImageUrl: String?
    var fullName: String?
    var bio : String?
    let email : String
}

extension User{
    static var MOCK_USER : [User] = [
        .init(id: NSUUID().uuidString, username: "kevin12", profileImageUrl: "pic5", fullName: "Kevin Paul", bio: "SDE 1 | UI/UX Designer", email: "kevin@gmail.com"),
        .init(id: NSUUID().uuidString, username: "david34", profileImageUrl: "pic5", fullName: "David Paul", bio: "UI/UX Designer", email: "david@gmail.com"),
        .init(id: NSUUID().uuidString, username: "sanu99", profileImageUrl: "pic5", fullName: "Sanu Paul", bio: "SDE 3 | UI/UX Designer", email: "kevin@gmail.com"),
        .init(id: NSUUID().uuidString, username: "synnyln", profileImageUrl: "pic5", fullName: "Sunny Paul", bio: "Senior SDE | Manager", email: "kevin@gmail.com"),
    ]
}
