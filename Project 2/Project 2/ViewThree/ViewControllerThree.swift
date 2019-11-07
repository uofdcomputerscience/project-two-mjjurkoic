//
//  ViewControllerThree.swift
//  Project 2
//
//  Created by Michael Jurkoic on 11/5/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewControllerThree: UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var continueButton: UIButton!
    
    
    var calendar: Calendar?
    var christmasDayDate: Date?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calendar = Calendar(identifier: .gregorian)
        christmasDayDate = calendar!.date(from: DateComponents(year: 2019, month: 12, day: 25))!
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
        // Use today's date
        datePicker.date = Date()
        continueButton.isEnabled = false
    }
    
    @IBAction func datePickerChanged(_ sender: Any) {
        if (calendar?.isDate(datePicker.date, inSameDayAs: christmasDayDate!))! {
            activityIndicator.stopAnimating()
            continueButton.isEnabled = true
        } else {
            activityIndicator.startAnimating()
            continueButton.isEnabled = false
        }
    }
    
}
