//
//  ContentView.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 30/05/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    @StateObject var registrationViewModel = RegistrationViewModel()
    
    var body: some View {
        Group{
            if viewModel.useSession == nil {
                LoginView()
                    .environmentObject(registrationViewModel) 
            }else if let currentUser = viewModel.currentUser{
                MainTabView(user: currentUser)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
