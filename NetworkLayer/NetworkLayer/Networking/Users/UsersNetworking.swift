//
//  UsersNetworking.swift
//  NetworkLayer
//
//  Created by Eslam Ali  on 13/04/2022.
//

import Foundation
import Alamofire

enum UsersNetwroking {
    case getUsers
    case createUser (name: String, email: String)
}

extension UsersNetwroking : TargetType {
    var baseUrl: String {
        switch self {
        default :
                return "https://jsonplaceholder.typicode.com"

        }
    }
    
    var path: String {
        switch self {
        case .getUsers:
            return "/users"
        case .createUser:
            return "/users"

        }
    }
    
    var method: HTTPMethod {
        switch self  {
        case .getUsers :
            return .get
            
        case .createUser:
            return .post
        }
    }
    
    var task: Task {
        switch self {
        case .getUsers:
            return .requestPlain
        case .createUser(let name, let email ):
            return .requestParameter(parameters: ["name" : name, "email" : email ], encoding: JSONEncoding.default )
        }
    }
    
    var headers: [String : String]? {
        return [:]
    }
    
    
}


