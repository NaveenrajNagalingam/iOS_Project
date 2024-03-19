//
//  AppDelegate.swift
//  RealTimeDataBase
//
//  Created by Mobility User 1 on 10/11/22.
//

import Foundation
import Firebase
import FirebaseCore
import FirebaseFirestore



class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
