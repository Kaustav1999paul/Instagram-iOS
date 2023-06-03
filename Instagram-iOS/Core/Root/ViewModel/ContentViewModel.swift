//
//  ContentViewModel.swift
//  Instagram-iOS
//
//  Created by Kaustav Paul on 02/06/23.
//

import Foundation
import Firebase
import Combine


class ContentViewModel: ObservableObject {
    
    private let services = AuthService.shared
    private var cancellable = Set<AnyCancellable>()
    @Published var useSession : FirebaseAuth.User?
    @Published var currentUser: User?
    
    init() {
        setupSubscribers()
    }
    
    func setupSubscribers(){
        services.$userSession.sink { [weak self] userSession in
            self?.useSession = userSession
        }.store(in: &cancellable)
        
        services.$currentUser.sink { [weak self] currentUser in
            self?.currentUser = currentUser
        }.store(in: &cancellable)
    }
}


