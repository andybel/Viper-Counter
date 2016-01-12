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
    
    // #1 - The Presenter is a PONSO which mainly consists of logic to drive the UI. It gathers input from user interactions so it can send requests to an Interactor.
    
    // #2 - The Presenter does not know about the existence of UILabel, UIButton, etc. The Presenter only knows about the content it maintains and when it should be displayed. It is up to the View to determine how the content is displayed. Entities are never passed from the Interactor to the Presenter. Instead, simple data structures that have no behavior are passed from the Interactor to the Presenter. This prevents any “real work” from being done in the Presenter. The Presenter can only prepare the data for display in the View.
    
    func updateView(){
        self.interactor?.requestCount()
    }
    
    func increment(){
        self.interactor?.increment()
    }
    
    func decrement(){
        self.interactor?.decrement()
    }
    
    // #3 - The Presenter also receives results from an Interactor and converts the results into a form that is efficient to display in a View.
    
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