//
//  Task2.swift
//  HKeychain
//
//  Created by Karavella on 10/09/22.
//

import SwiftUI

struct Task2: View {
    @ObservedObject var custom = Custom2()
    
    init() {
        print(custom.getAccount() as Any)
        
        let acc = Account(holderName: "Bank", cardNumber: "8600 **** **** ****", accountBalance: "1 000 000", spendingLimit: "2 000 000")
        
        custom.account = acc
        print(custom.getAccount() as Any)
    }
    
    var body: some View {
        Text(custom.getAccount()!.holderName)
        
    }
}

struct Task2_Previews: PreviewProvider {
    static var previews: some View {
        Task2()
    }
}
