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
    
}

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
    
    func canDecrement() -> Bool{
        return (self.count > 0)
    }
    
    func sendCount(){
        self.output?.updateCount(self.count)
    }
    
}