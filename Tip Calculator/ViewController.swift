//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Alexander Hall on 2/3/19.
//  Copyright © 2019 Alexander Hall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get Bill
        let bill = Double(billField.text!) ?? 0
        //Calculate tip and total
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill+tip
        //Update display
        tipLabel.text = String(format:"$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
    }
}

