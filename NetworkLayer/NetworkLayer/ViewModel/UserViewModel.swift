//
//  UserViewModel.swift
//  NetworkLayer
//
//  Created by Eslam Ali  on 13/04/2022.
//

import Foundation

class UsersViewModel {
    
    var users : [User] = []
    
    func getUsers (completion: @escaping (Bool)->Void) {
        
        UsersAPI.shared.getUsers { (result) in
            switch result {
            case .success(let users):
                self.users = users!
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
    }
    
}
