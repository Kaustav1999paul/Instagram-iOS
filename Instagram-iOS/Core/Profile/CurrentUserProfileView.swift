//
//  CurrentUserProfileView.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 01/06/23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    var user :User
        
    var posts : [Post] {
        return Post.MOKE_POST.filter({$0.user?.username == user.username})
    }


    
    var body: some View {
        NavigationStack {
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
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: User.MOCK_USER[0])
    }
}
