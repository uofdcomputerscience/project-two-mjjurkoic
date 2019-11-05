//
//  ViewController.swift
//  Project 2
//
//  Created by Russell Mirabelli on 10/26/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var firstStackView: UIStackView!
    @IBOutlet weak var secondStackView: UIStackView!
    @IBOutlet weak var stackViewSwitcher: UISegmentedControl!
    
    var continueGate: ContinueGate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueGate = ContinueGate(aSwitchOn: false, bSwitchOn: false, cSwitchOn: false, dSwitchOn: false, canContinue: false)
        firstStackView.isHidden = false
        secondStackView.isHidden = true
        continueButton.isEnabled = false
    }
    
    @IBAction func stackViewSwitcherChanged(_ sender: Any) {
        if stackViewSwitcher.isEnabledForSegment(at: 0) {
            firstStackView.isHidden = false
            secondStackView.isHidden = true
        } else if stackViewSwitcher.isEnabledForSegment(at: 1) {
            firstStackView.isHidden = true
            secondStackView.isHidden = false
        }
    }
    
    func changeContinueButtonState() {
        if continueGate!.canContinue {
            continueButton.isEnabled = true
        } else {
            continueButton.isEnabled = false
        }
    }
    
}

