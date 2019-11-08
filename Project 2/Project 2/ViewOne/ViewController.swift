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
    @IBOutlet weak var stackViewSwitcher: UISegmentedControl!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var aSwitch: UISwitch!
    @IBOutlet weak var bSwitch: UISwitch!
    @IBOutlet weak var cSwitch: UISwitch!
    @IBOutlet weak var dSwitch: UISwitch!
    
    var continueGate: ContinueGate?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        continueGate = ContinueGate(aSwitchOn: false, bSwitchOn: false, cSwitchOn: false, dSwitchOn: false, canContinue: false)
        firstView.isHidden = false
        secondView.isHidden = true
        continueButton.isEnabled = false
        aSwitch.isEnabled = true
        aSwitch.isOn = false
        aSwitch.isUserInteractionEnabled = true
        bSwitch.isEnabled = true
        bSwitch.isOn = false
        bSwitch.isUserInteractionEnabled = true
        cSwitch.isEnabled = true
        cSwitch.isOn = false
        cSwitch.isUserInteractionEnabled = true
        dSwitch.isEnabled = true
        dSwitch.isOn = false
        dSwitch.isUserInteractionEnabled = true
    }
    
    @IBAction func stackViewSwitcherChanged(_ sender: Any) {
        firstView.isHidden.toggle()
        secondView.isHidden.toggle()
    }
    
    @IBAction func aStateChanged(_ sender: Any) {
        continueGate?.changeSwitchState(gate: .a)
        changeContinueButtonState()
    }
    
    @IBAction func bStateChanged(_ sender: Any) {
        continueGate?.changeSwitchState(gate: .b)
        changeContinueButtonState()
    }
    
    @IBAction func cStateChanged(_ sender: Any) {
        continueGate?.changeSwitchState(gate: .c)
        changeContinueButtonState()
    }
    
    @IBAction func dStateChanged(_ sender: Any) {
        continueGate?.changeSwitchState(gate: .d)
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

