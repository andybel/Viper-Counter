//
//  AppDelegate.swift
//  Viper Counter Swift
//
//  Created by Andy Bell on 11/01/2016.
//  Copyright © 2016 bellovic. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let appDependencies = AppDependancies()
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        
        appDependencies.installRootViewControllerIntoWindow(window!)
        
        return true
        
    }

}

