//
//  iDineApp.swift
//  iDine
//
//  Created by Philip Keller on 2/15/23.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
