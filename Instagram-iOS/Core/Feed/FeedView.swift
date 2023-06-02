//
//  FeedView.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 31/05/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack (spacing: 40){
                    ForEach(Post.MOKE_POST){post in
                        FeedCell(post: post)
                    }
                }.padding(.top, 10)
            }.navigationTitle("Feeds")
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
