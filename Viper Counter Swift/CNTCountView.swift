//
//  CNTCountView.swift
//  Viper Counter Swift
//
//  Created by Andy Bell on 11/01/2016.
//  Copyright © 2016 bellovic. All rights reserved.
//

import UIKit

// #1 - The View is an abstract interface, defined in Objective-C with a protocol. A UIViewController, or one of its subclasses, will implement the View protocol.

protocol CNTCountView {
    func setCountText(countText: String)
    func setDecrementEnabled(enabled: Bool)
}
