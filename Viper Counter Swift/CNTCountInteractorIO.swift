//
//  CNTCountInteractorIO.swift
//  Viper Counter Swift
//
//  Created by Andy Bell on 11/01/2016.
//  Copyright © 2016 bellovic. All rights reserved.
//

import Foundation

protocol CNTCountInteractorInput {
    func requestCount()
    func increment()
    func decrement()
}

protocol CNTCountInteractorOutput {
    func updateCount(count: Int)
}