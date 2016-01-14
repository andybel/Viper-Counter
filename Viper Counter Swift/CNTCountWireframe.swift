//
//  CNTCountWireframe.swift
//  Viper Counter Swift
//
//  Created by Andy Bell on 13/01/2016.
//  Copyright © 2016 bellovic. All rights reserved.
//

import UIKit

let CountViewControllerIdentifier = "CNTCountViewController"

class CNTCountWireframe: CNTSuperWireframe {

    var rootWireframe:CNTRootWireframe?
    //var countResultWireframe:CNTCountResultWireframe?
    
    var countViewController:CNTCountViewController?
    var countPresenter:CNTCountPresenter?
    
    func presentCountInterfaceFromWindow(window: UIWindow) {
        
        countViewController = viewControllerFromStoryboardWithIdentifier(CountViewControllerIdentifier) as? CNTCountViewController
        // viewController.eventHandler = listPresenter
        countViewController?.presenter = countPresenter
        
        // listPresenter!.userInterface = viewController
        rootWireframe?.showRootViewController(countViewController!, inWindow: window)
    
    }
    
    func presentCountResultsInterface(){
        
        let countResultWireframe = CNTCountResultWireframe()
        countResultWireframe.rootWireframe = rootWireframe
        countResultWireframe.presentCountResultViewController()
        
    }
    
//    func countViewControllerFromStoryboard() -> CNTCountViewController {
//        let storyboard = mainStoryboard()
//        let viewController = storyboard.instantiateViewControllerWithIdentifier(CountViewControllerIdentifier) as! CNTCountViewController
//        return viewController
//    }
//    
//    func mainStoryboard() -> UIStoryboard {
//        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
//        return storyboard
//    }
    
}
