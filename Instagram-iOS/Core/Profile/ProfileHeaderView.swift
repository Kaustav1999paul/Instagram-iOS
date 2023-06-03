//
//  ProfileHeaderView.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 02/06/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    @State private var showEditProfile = false
    let user : User
    
    var body: some View {
        VStack{
            Image(user.profileImageUrl ?? "")
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120, alignment: .top)
                .clipShape(Circle())
                .clipped()
                .shadow(color: .mint, radius: 30, x: 0, y: 10)
            
            Text(user.username ?? "")
                .padding(.top, 30)
                .font(.system(size: 30))
                .fontWeight(.bold)
            
            Text(user.bio ?? "")
                .font(.system(size: 15))
                .foregroundColor(Color.gray)
            
            HStack(alignment: .center, spacing: 60){
                UserStatView(value: "3", title: "Photos")
                UserStatView(value: "2.2M", title: "Followers")
                UserStatView(value: "1M", title: "Following")
            }.font(.system(size: 20)).padding(.vertical, 20)
            
//                Button
            Button{
                if(user.isCurrentUser){
                    showEditProfile.toggle()
                }else{
                    print("Follow User")
                }
            }label: {
                Text(user.isCurrentUser ? "Edit Profile" : "Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(user.isCurrentUser ? Color.black : Color.white)
                        .frame(width: 360, height: 32)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(user.isCurrentUser ?Color.gray : .clear, lineWidth: 1)
                            )
            }.background(user.isCurrentUser ? Color.white : Color.blue)
                .cornerRadius(6)
        }.padding(.top, 30)
            .fullScreenCover(isPresented: $showEditProfile){
                EditProfileView()
            }
            
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: User.MOCK_USER[0])
    }
}
