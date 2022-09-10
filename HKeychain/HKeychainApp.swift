//
//  HKeychainApp.swift
//  HKeychain
//
//  Created by Karavella on 10/09/22.
//

import SwiftUI

@main
struct HKeychainApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            StartPage()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
