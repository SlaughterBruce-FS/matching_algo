//
//  matchingApp.swift
//  matching
//
//  Created by J C on 9/17/23.
//

import SwiftUI

@main
struct matchingApp: App {
    var body: some Scene {
        WindowGroup {
            let users: [User] = [
                            .MOCK_USER,
                            .MOCK_USER_1,
                            .MOCK_USER_2,
                            .MOCK_USER_3
                        ]
                        ContentView(users: users)
        }
    }
}
