//
//  Post.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 01/06/23.
//

import Foundation

struct Post: Identifiable, Hashable, Codable{
    let id: String
    let ownerUid: String
    let caption : String
    var likes : Int
    let imageUrl: String
    var user : User?
}

extension Post{
    static var MOKE_POST : [Post] = [
        .init(id: NSUUID().uuidString,
              ownerUid:  NSUUID().uuidString,
              caption: "Hello there...",
              likes: 12,
              imageUrl: "pic3",
              user: User.MOCK_USER[0]),
        
        .init(id: NSUUID().uuidString,
              ownerUid:  NSUUID().uuidString,
              caption: "Hello world, how is it going all around...",
              likes: 22,
              imageUrl: "pic5",
              user: User.MOCK_USER[2]),
        
        .init(id: NSUUID().uuidString,
              ownerUid:  NSUUID().uuidString,
              caption: "There r few...",
              likes: 2,
              imageUrl: "pic4",
              user: User.MOCK_USER[0]),
        
        .init(id: NSUUID().uuidString,
              ownerUid:  NSUUID().uuidString,
              caption: "ohh no i missed it...",
              likes: 52,
              imageUrl: "pic6",
              user: User.MOCK_USER[1]),
        
        .init(id: NSUUID().uuidString,
              ownerUid:  NSUUID().uuidString,
              caption: "Hello World...",
              likes: 66,
              imageUrl: "pic5",
              user: User.MOCK_USER[2]),
    ]
}
