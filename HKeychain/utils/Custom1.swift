//
//  Custom1.swift
//  HKeychain
//
//  Created by Karavella on 10/09/22.
//

import Foundation

struct Custom1 {
    static let defaults = UserDefaults.standard
    
    static func storeSetUser(user: User) {
        let encoder = JSONEncoder()
        
        if let encodeUser = try? encoder.encode(user) {
            defaults.set(encodeUser, forKey: "user")
        }
    }
    
    static func storeGetUser() -> User! {
        if let savedUserData = defaults.object(forKey: "user") as? Data {
            let decoder = JSONDecoder()
            if let saveUser = try? decoder.decode(User.self, from: savedUserData) {
                return saveUser
            }
        }
        return nil
    }
}
