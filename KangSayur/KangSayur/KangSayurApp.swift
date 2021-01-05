//
//  KangSayurApp.swift
//  KangSayur
//
//  Created by Venus Dhammiko on 04/01/21.
//

import SwiftUI

@main
struct KangSayurApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
