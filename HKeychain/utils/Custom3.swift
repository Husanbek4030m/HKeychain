//
//  Custom3.swift
//  HKeychain
//
//  Created by Karavella on 10/09/22.
//

import Foundation
import SwiftKeychainWrapper

class Custom3 : ObservableObject {
    @Published var psw:String {
        didSet {
            KeychainWrapper.standard.set(psw, forKey: "password")
        }
    }
    
    init() {
        self.psw = KeychainWrapper.standard.object(forKey: "password") as? String ?? ""
    }
}
