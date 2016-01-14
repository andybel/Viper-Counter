//
//  CNTCountResultWireframe.swift
//  Viper Counter Swift
//
//  Created by Andy Bell on 14/01/2016.
//  Copyright © 2016 bellovic. All rights reserved.
//

import UIKit

let CountResultViewControllerIdentifier = "CNTCountResultViewController"

class CNTCountResultWireframe: CNTSuperWireframe {

    var countResultViewController:CNTCountResultViewController?
    var countResultPresenter:CNTCountResultPresenter?
    var rootWireframe:CNTRootWireframe?
    
    func presentCountResultViewController(){
        
        countResultViewController = viewControllerFromStoryboardWithIdentifier(CountResultViewControllerIdentifier) as? CNTCountResultViewController
        
        rootWireframe?.showViewOnNavigationStack(countResultViewController!)
        
    }
    
    
    
}
