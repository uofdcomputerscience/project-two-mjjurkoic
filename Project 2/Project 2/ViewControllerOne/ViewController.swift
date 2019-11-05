//
//  ViewController.swift
//  Project 2
//
//  Created by Russell Mirabelli on 10/26/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedSwitch: UISegmentedControl!
    @IBOutlet weak var firstSwitch: UISwitch!
    @IBOutlet weak var secondSwitch: UISwitch!
    @IBOutlet weak var continueButton: UIButton!
    
    var continueGate: ContinueGate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueGate = ContinueGate(segmentedSwitchOn: false, firstSwitchOn: false, secondSwitchOn: false, canContinue: false)
        continueButton.isEnabled = false
    }

    @IBAction func segmentedSwitchChanged(_ sender: Any) {
        continueGate?.changeSwitchState(gate: .segmented)
        changeContinueButtonState()
    }
    
    @IBAction func firstSwitchChanged(_ sender: Any) {
        continueGate?.changeSwitchState(gate: .first)
        changeContinueButtonState()
    }
    
    @IBAction func secondSwitchChanged(_ sender: Any) {
        continueGate?.changeSwitchState(gate: .second)
        changeContinueButtonState()
    }
    
    func changeContinueButtonState() {
        if continueGate!.canContinue {
            continueButton.isEnabled = true
        } else {
            continueButton.isEnabled = false
        }
    }
    
}

