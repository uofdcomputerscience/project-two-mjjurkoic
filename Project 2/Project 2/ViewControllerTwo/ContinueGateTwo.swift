//
//  ContinueGateTwo.swift
//  Project 2
//
//  Created by Michael Jurkoic on 11/4/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

struct ContinueGateTwo {
    var stepperIsFive: Bool
    var sliderIsFive: Bool
    var canContinue: Bool
    
    enum NumberSelector {
        case stepper
        case slider
    }
    
    // Only call this function if one of the selectors has a value
    // of 5.
    mutating func changeSelectorState(gate: NumberSelector, value: Int) {
        let isFive: Bool = value == 5 ? true : false
        
        if gate == .stepper {
            stepperIsFive = isFive
        } else if gate == .slider {
            sliderIsFive = isFive
        }
        
        if stepperIsFive && sliderIsFive {
            canContinue = true
        } else {
            canContinue = false
        }
    }
}
