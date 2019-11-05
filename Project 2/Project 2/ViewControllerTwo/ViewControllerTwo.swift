//
//  ViewControllerTwo.swift
//  Project 2
//
//  Created by Michael Jurkoic on 11/4/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {
    
    @IBOutlet weak var stepperCounter: UILabel!
    @IBOutlet weak var stepperController: UIStepper!
    @IBOutlet weak var sliderController: UISlider!
    @IBOutlet weak var sliderCounter: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    
    var continueGate: ContinueGateTwo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueGate = ContinueGateTwo(stepperIsFive: false, sliderIsFive: false, canContinue: false)
        stepperCounter.text = String(0)
        sliderController.value = 0
        stepperController.value = 0
        continueButton.isEnabled = false
    }
    
    @IBAction func stepperChanged(_ sender: Any) {
        stepperCounter.text = String(Int(stepperController.value))
        continueGate?.changeSelectorState(gate: .stepper, value: Int(stepperController.value))
        changeContinueButtonState()
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        sliderController.value = roundf(sliderController.value)
        sliderCounter.text = String(Int(sliderController.value))
        continueGate?.changeSelectorState(gate: .slider, value: Int(sliderController.value))
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
