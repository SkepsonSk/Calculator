//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Jakub Zelmanowicz on 03/10/2023.
//

import SwiftUI

@main
struct CalculatorApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
