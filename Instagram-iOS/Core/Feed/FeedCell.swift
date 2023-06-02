//
//  FeedCell.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 31/05/23.
//

import SwiftUI

struct FeedCell: View {
    
    let post : Post
    
    var body: some View {
        VStack{
            //            UserProfile and Name
            HStack{
                if let user = post.user{
                    Image(user.profileImageUrl ?? "")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 40, height: 40)
                    
                    Text(user.fullName ?? "").fontWeight(.bold)
                }
                
                Spacer()
                
//                Time of Post
                Text("6h ago").font(.footnote).foregroundColor(.gray).padding(.trailing)
            }.padding(.leading)
            //        Image
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            
            //            Like, Comment buttons
            HStack(spacing: 15){
                Button{
                    print("Like")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
                
                Button{
                    print("Message")
                } label: {
                    Image(systemName: "message")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
                
                Spacer()
                
                Text("\(post.likes) likes")
                    .fontWeight(.bold)
                    .font(.footnote)
            }
            .padding(.horizontal)
            .padding(.top, 4)
            
            
            //            Caption of the post
            HStack{
                Image(systemName: "quote.opening")
                Text(post.caption)
                    .font(.footnote)
                Image(systemName: "quote.closing")
            }.frame(maxWidth: .infinity, alignment: .leading)
                .font(.footnote)
                .padding(.leading, 20)
                .padding(.top, 5)
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell(post: Post.MOKE_POST[2])
    }
}
