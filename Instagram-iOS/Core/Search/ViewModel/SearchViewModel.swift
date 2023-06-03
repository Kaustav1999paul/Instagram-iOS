//
//  SearchViewModel.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 03/06/23.
//

import Foundation

class SearchViewModel : ObservableObject{
    @Published var users = [User]()
    
    init() {
        Task{ try await fetchAllUsers() }
    }
    
    @MainActor
    func fetchAllUsers() async throws {
        self.users = try await UserService.fetchAllUser()
    }
}
