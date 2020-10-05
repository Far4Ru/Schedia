//
//  SchediaApp.swift
//  Schedia
//
//  Created by Александр Панин on 05.10.2020.
//

import SwiftUI

@main
struct SchediaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
