//
//  AppDelegate.swift
//  FileSharingExplorer
//
//  Created by Bennett Smith on 5/20/24.
//

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print(URL.documentsDirectory)
        return true
    }
}
