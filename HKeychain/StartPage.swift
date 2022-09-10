//
//  StartPage.swift
//  HKeychain
//
//  Created by Karavella on 10/09/22.
//

import SwiftUI

struct StartPage: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink {
                    Task1()
                } label: {
                    Text("Task1")
                }

                NavigationLink {
                    Task2()
                } label: {
                    Text("Task2")
                }
                
                NavigationLink {
                    Task3()
                } label: {
                    Text("Task3")
                }

            }
        }
    }
}

struct StartPage_Previews: PreviewProvider {
    static var previews: some View {
        StartPage()
    }
}
