//
//  Account.swift
//  HKeychain
//
//  Created by Karavella on 10/09/22.
//

import Foundation

struct Account: Codable {
    var holderName: String
    var cardNumber: String
    var accountBalance: String
    var spendingLimit: String
}
