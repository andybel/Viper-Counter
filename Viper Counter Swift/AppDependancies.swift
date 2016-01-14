//
//  AppDependancies.swift
//  Viper Counter Swift
//
//  Created by Andy Bell on 13/01/2016.
//  Copyright © 2016 bellovic. All rights reserved.
//

import Foundation
import UIKit

class AppDependancies {
    
    let countWireframe = CNTCountWireframe()
    
    init(){
        configureDependancies()
    }
    
    // provide a method to add the first UI
    func installRootViewControllerIntoWindow(window: UIWindow) {
        countWireframe.presentCountInterfaceFromWindow(window)
    }
    
    func configureDependancies(){
        
        // top level instances
        let rootWireframe = CNTRootWireframe()
        
        // ...and the modules
        // init the presenter, interactor & wireframe
        // then link them together
        
        // 1) count module
        let countPresenter = CNTCountPresenter()
        let countInteractor = CNTCountInteractor() // often interactor init with a DataManager
        
        countPresenter.interactor = countInteractor
        countPresenter.countWireframe = countWireframe
        
        countInteractor.output = countPresenter
        
        countWireframe.rootWireframe = rootWireframe
        countWireframe.countPresenter = countPresenter
        
        // 2) count result module
        
        
        
    }
    
}