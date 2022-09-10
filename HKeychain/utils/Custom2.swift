//
//  Custom2.swift
//  HKeychain
//
//  Created by Karavella on 10/09/22.
//

import Foundation

class Custom2 : ObservableObject {
    
    @Published var account: Account? {
        didSet {
            setAccount(account: account!)
        }
    }
    
    init() {
        self.account = getAccount()
    }
    
    
    func setAccount(account: Account) {
        let enc = JSONEncoder()
        if let encAccount = try? enc.encode(account) {
            UserDefaults.standard.set(encAccount, forKey: "account")
        }
    }
    
    func getAccount() -> Account! {
        if let savedAccount = UserDefaults.standard.object(forKey: "account") as? Data {
            let dec = JSONDecoder()
            if let saveAcc = try? dec.decode(Account.self, from: savedAccount) {
                return saveAcc
            }
        }
        return Account(holderName: "", cardNumber: "", accountBalance: "", spendingLimit: "")
    }
}
