//
//  Task1.swift
//  HKeychain
//
//  Created by Karavella on 10/09/22.
//

import SwiftUI

struct Task1: View {
    let user = User(firstname: "Husan", lastname: "Mannonov", email: "husan@gmail.com", phone: "+998977990022", adress: "Toshkent")
    init() {
        print(Custom1.storeGetUser() as Any)
        
        Custom1.storeSetUser(user: self.user)
        
        print(Custom1.storeGetUser() as Any)
        
    }
    
    var body: some View {
        Text("Consolga qarang!!! \(self.user.firstname)")
    }
}

struct Task1_Previews: PreviewProvider {
    static var previews: some View {
        Task1()
    }
}
