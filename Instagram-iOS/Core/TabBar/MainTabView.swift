//
//  MainTabView.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 30/05/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            FeedView().tabItem{
                Image(systemName: "apple.logo")
            }
            SearchView().tabItem{
                Image(systemName: "magnifyingglass")
            }
            Text("Post").tabItem{
                Image(systemName: "plus.app")
            }
            Text("Notifications").tabItem{
                Image(systemName: "app.badge")
            }
            CurrentUserProfileView(user: User.MOCK_USER[0]).tabItem{
                Image(systemName: "person.fill")
            }
        }.accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
