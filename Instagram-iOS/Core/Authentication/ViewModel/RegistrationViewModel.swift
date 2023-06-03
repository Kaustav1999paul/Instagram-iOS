//
//  RegistrationViewModel.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 02/06/23.
//

import Foundation

class RegistrationViewModel : ObservableObject{
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    
    func createUser() async throws{
        try await AuthService.shared.createUser(withEmail: email, password: password, username: username)
        username = ""
        email = ""
        password = ""
    }
}
