//
//  MainTabView.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 30/05/23.
//

import SwiftUI

struct MainTabView: View {
    
    let user : User
    @State private var selectedTabIndex = 0
    
    var body: some View {
        TabView{
            FeedView().onAppear{
                selectedTabIndex = 0
            }.tabItem{
                Image(systemName: "apple.logo")
            }.tag(0)
            
            SearchView().onAppear{
                selectedTabIndex = 1
            }.tabItem{
                Image(systemName: "magnifyingglass")
            }.tag(1)
            
            UploadPostView(tabIndex: $selectedTabIndex).onAppear{
                selectedTabIndex = 2
            }.tabItem{
                Image(systemName: "plus.app")
            }.tag(2)
            
            Text("Notifications").onAppear{
                selectedTabIndex = 3
            }.tabItem{
                Image(systemName: "app.badge")
            }.tag(3)
            
            CurrentUserProfileView(user: user).onAppear{
                selectedTabIndex = 4
            }.tabItem{
                Image(systemName: "person.fill")
            }.tag(4)
            
        }.accentColor(.blue)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(user: User.MOCK_USER[0])
    }
}
