//
//  AppDelegate.swift
//  StarWarsWiki
//
//  Created by Andres Duque on 5/08/23.
//

import Foundation
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
