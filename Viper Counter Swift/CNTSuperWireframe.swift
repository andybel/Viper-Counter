//
//  CNTSuperWireframe.swift
//  Viper Counter Swift
//
//  Created by Andy Bell on 14/01/2016.
//  Copyright © 2016 bellovic. All rights reserved.
//

import UIKit

class CNTSuperWireframe: NSObject {

    func viewControllerFromStoryboardWithIdentifier(identifier: String) -> UIViewController {
        let storyboard = mainStoryboard()
        let viewController = storyboard.instantiateViewControllerWithIdentifier(identifier)
        return viewController
    }
    
    func mainStoryboard() -> UIStoryboard {
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        return storyboard
    }
    
}
