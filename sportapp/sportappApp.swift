//
//  sportappApp.swift
//  sportapp
//
//  Created by noor alotibi on 10/10/1446 AH.
//

import SwiftUI
import Firebase
@main
struct sportappApp: App {
    init() {
         FirebaseApp.configure()
     }
    var body: some Scene {
        WindowGroup {
            splash()
        }
    }
}
