//
//  CNTCountInteractor.swift
//  Viper Counter Swift
//
//  Created by Andy Bell on 11/01/2016.
//  Copyright © 2016 bellovic. All rights reserved.
//

import UIKit

class CNTCountInteractor: NSObject, CNTCountInteractorInput {
    
    var output: CNTCountInteractorOutput?
    private var count = 0
    
    func canDecrement() -> Bool{
        return (self.count > 0)
    }
    
    func sendCount(){
        self.output?.updateCount(self.count)
    }
    
}

// #1 - An Interactor represents a single use case in the app. It contains the business logic to manipulate model objects (Entities) to carry out a specific task. The work done in an Interactor is independent of any type of UI. The same Interactor could be used in an iOS app or a console application.

extension CNTCountInteractor {
    
    func requestCount() {
        self.sendCount()
    }
    
    func increment() {
        ++self.count
        self.sendCount()
    }
    
    func decrement() {
        --self.count
        self.sendCount()
    }
    
}