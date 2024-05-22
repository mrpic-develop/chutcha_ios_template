//
//  AppDelegate.swift
//  CCTemplate
//
//  Created by 박인수 on 5/16/24.
//

import UIKit
import SwiftUI

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UIHostingController(rootView: DIContainer.shared.container.resolve(MainView.self))
        window?.makeKeyAndVisible()
        return true
    }

}

