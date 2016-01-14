//
//  CNTCountViewController.swift
//  Viper Counter Swift
//
//  Created by Andy Bell on 11/01/2016.
//  Copyright © 2016 bellovic. All rights reserved.
//

import UIKit

class CNTCountViewController: UIViewController, CNTCountView {

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var decrementBtn: UIButton!
    @IBOutlet weak var incrementBtn: UIButton!
    @IBOutlet weak var showCountBtn: UIButton!
    
    var presenter:CNTCountPresenter?
    
    override func viewDidLoad() {
        
        self.countLabel.text = "0"
        
//        self.presenter = CNTCountPresenter()
        self.presenter?.view = self
//        
//        self.presenter?.interactor = CNTCountInteractor()
//        self.presenter?.interactor?.output = self.presenter
        
    }
    
    // MARK: Actions
    @IBAction func decrement(sender: AnyObject) {
        self.presenter?.decrement()
    }
    
    @IBAction func increment(sender: AnyObject) {
        self.presenter?.increment()
    }
    
    @IBAction func showCountBtnAction(sender: AnyObject) {
        self.presenter?.showCount()
    }
    
}

extension CNTCountViewController {
    
    // MARK: CNTCountView methods
    
    func setCountText(countText: String) {
        self.countLabel.text = countText
    }
    
    func setDecrementEnabled(enabled: Bool) {
        self.decrementBtn.enabled = enabled
    }
    
}
