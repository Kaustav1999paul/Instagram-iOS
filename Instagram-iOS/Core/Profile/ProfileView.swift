//
//  ProfileView.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 30/05/23.
//

import SwiftUI

struct ProfileView: View {
    
    let user : User

    var posts : [Post] {
        return Post.MOKE_POST.filter({$0.user?.username == user.username})
    }
    
    let imageDimention : CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    var body: some View {
            ScrollView{
    //                Header
                ProfileHeaderView(user: user)
                
                    Divider()
                
    //                Post Grid
                
                PostGridView(posts: posts)
                    
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        
                    } label: {
                        Image(systemName: "ellipsis.circle")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USER[0])
    }
}
