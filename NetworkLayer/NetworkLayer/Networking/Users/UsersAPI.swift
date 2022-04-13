//
//  UsersAPI.swift
//  NetworkLayer
//
//  Created by Eslam Ali  on 13/04/2022.
//

import Foundation
class UsersAPI  : BaseAPI <UsersNetwroking> {
    
    static let shared  =  UsersAPI()
    
    func getUsers(completion: @escaping (Result<[User]?, NSError>)->Void) {
        self.fetchData(target: .getUsers, responseClass: [User].self) { (result) in
            completion(result)
        }
    }
    
    
}
