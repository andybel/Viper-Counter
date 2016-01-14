//
//  CNTRootWireframe.swift
//  Viper Counter Swift
//
//  Created by Andy Bell on 13/01/2016.
//  Copyright © 2016 bellovic. All rights reserved.
//

import Foundation
import UIKit

class CNTRootWireframe: NSObject {

    var mainWindow: UIWindow?
    
    func showRootViewController(viewController: UIViewController, inWindow: UIWindow) {
        
        mainWindow = inWindow
        
        let navigationController = navigationControllerFromWindow(inWindow)
        navigationController.viewControllers = [viewController]
    }
    
    func navigationControllerFromWindow(window: UIWindow) -> UINavigationController {
        let navigationController = window.rootViewController as! UINavigationController
        return navigationController
    }
    
    func showViewOnNavigationStack(viewController: UIViewController){
        
        let navigationController = navigationControllerFromWindow(mainWindow!)
        
        navigationController.pushViewController(viewController, animated: true)
        
    }
    
}
