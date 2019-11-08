//
//  ViewControllerFour.swift
//  Project 2
//
//  Created by Michael Jurkoic on 11/6/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewControllerFour: UIViewController {
    
    @IBOutlet weak var statePickerView: UIPickerView!
    @IBOutlet weak var capitalTextField: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    
    let statesAndCapitals: StatesAndCapitals = StatesAndCapitals()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePickerView.dataSource = self
        statePickerView.delegate = self
        statePickerView.reloadAllComponents()
        
        continueButton.isEnabled = false
    }
    
    @IBAction func capitalTextEntered(_ sender: Any) {
        if (capitalTextField.text == statesAndCapitals.stateCapitalArray[statePickerView.selectedRow(inComponent: 0)][1]) {
            continueButton.isEnabled = true
        } else {
            continueButton.isEnabled = false
        }
    }
}

extension ViewControllerFour: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return statesAndCapitals.stateCapitalArray.count
    }
    
}

extension ViewControllerFour: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return statesAndCapitals.stateCapitalArray[row][component]
    }
}
