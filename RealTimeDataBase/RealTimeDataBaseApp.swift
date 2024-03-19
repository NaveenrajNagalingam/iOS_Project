//
//  RealTimeDataBaseApp.swift
//  RealTimeDataBase
//
//  Created by Mobility User 1 on 10/11/22.
//

import SwiftUI

@main
struct RealTimeDataBaseApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
//            ContentView()
            LandingPage()
        }
    }
}
