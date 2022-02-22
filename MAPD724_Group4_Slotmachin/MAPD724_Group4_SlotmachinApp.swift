//
//  MAPD724_Group4_SlotmachinApp.swift
//  MAPD724_Group4_Slotmachin
//
//  Date: 2022-01-23
//
//Authors: Ridham Patel (301207688)
//         Shrinal Patel (301204864)
//         Pushparaj Sanjeevan (301213104)
//

import SwiftUI

@main
struct MAPD724_Group4_SlotmachinApp: App {
    
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
