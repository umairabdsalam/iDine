//
//  iDineApp.swift
//  iDine
//
//  Created by Umair Salam on 4/1/24.
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
