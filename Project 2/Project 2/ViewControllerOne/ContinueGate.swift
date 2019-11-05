//
//  ContinueGate.swift
//  Project 2
//
//  Created by Michael Jurkoic on 11/4/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

// The struct handles the selectors.  If they're all set to
// on, the final value, canContinue, will be true, allowing
// the user to proceed to the next screen.
struct ContinueGate {
    var segmentedSwitchOn: Bool
    var firstSwitchOn: Bool
    var secondSwitchOn: Bool
    var canContinue: Bool
    
    enum Switch {
        case segmented
        case first
        case second
    }
    
    mutating func changeSwitchState(gate: Switch) {
        if gate == .segmented {
            segmentedSwitchOn.toggle()
        } else if gate == .first {
            firstSwitchOn.toggle()
        } else if gate == .second {
            secondSwitchOn.toggle()
        }
        
        if segmentedSwitchOn && firstSwitchOn && secondSwitchOn {
            canContinue = true
        } else {
            canContinue = false
        }
    }
}
