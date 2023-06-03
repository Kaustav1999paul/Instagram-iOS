//
//  LoginViewModel.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 03/06/23.
//

import Foundation

class LoginViewModel : ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws{
       try await AuthService.shared.login(withEmail: email, password: password)
    }
}
