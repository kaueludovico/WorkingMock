//
//  DataSourceMock.swift
//  WorkingMock
//
//  Created by Kaue Ludovico on 06/02/23.
//

import Foundation

class DataSourceMock {
    
    static var shared = DataSourceMock()
    
    var user = User()
    
    func validateUser(completion: @escaping (User) -> ()) {
//        user = User(name: "Kauê", email: "kaueludovico@outlook.com", password: "123")
        completion(user)
    }
}
