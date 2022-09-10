//
//  Task3.swift
//  HKeychain
//
//  Created by Karavella on 10/09/22.
//

import SwiftUI

struct Task3: View {
    @ObservedObject var obj = Custom3()
    
    init() {
        print(obj.psw)
        obj.psw = "Qwerty123"
        
        print(obj.psw)
    }
    var body: some View {
        Text("Keychain => \(obj.psw)")
    }
}

struct Task3_Previews: PreviewProvider {
    static var previews: some View {
        Task3()
    }
}
