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
    var aSwitchOn: Bool
    var bSwitchOn: Bool
    var cSwitchOn: Bool
    var dSwitchOn: Bool
    var canContinue: Bool
    
    enum Switch {
        case a
        case b
        case c
        case d
    }
    
    mutating func changeSwitchState(gate: Switch) {
        if gate == .a {
            aSwitchOn.toggle()
        } else if gate == .b {
            bSwitchOn.toggle()
        } else if gate == .c {
            cSwitchOn.toggle()
        } else if gate == .d {
            dSwitchOn.toggle()
        }
        
        if aSwitchOn && bSwitchOn && cSwitchOn && dSwitchOn {
            canContinue = true
        } else {
            canContinue = false
        }
    }
}
