//
//  CNTCountPresenter.swift
//  Viper Counter Swift
//
//  Created by Andy Bell on 11/01/2016.
//  Copyright © 2016 bellovic. All rights reserved.
//

import UIKit

class CNTCountPresenter: NSObject, CNTCountInteractorOutput {

    var view:CNTCountView?
    var interactor:CNTCountInteractor?
    
    private var countFormatter = NSNumberFormatter(){
        didSet {
            countFormatter.numberStyle = .SpellOutStyle
        }
    }
    
    func updateView(){
        self.interactor?.requestCount()
    }
    
    func increment(){
        self.interactor?.increment()
    }
    
    func decrement(){
        self.interactor?.decrement()
    }
    
    // MARK CNTCountInteractorOutput methods
    func updateCount(count: Int) {
        self.view?.setCountText(self.formattedCount(count))
        self.view?.setDecrementEnabled(self.canDecrementCount(count))
    }
    
    func formattedCount(count: Int) -> String {
        return self.countFormatter.stringFromNumber(count)!
    }
    
    func canDecrementCount(count: Int) -> Bool {
        return (count > 0)
    }
    
}