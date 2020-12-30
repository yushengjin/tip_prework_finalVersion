//
//  ViewController.swift
//  tip_prework
//
//  Created by 金宇生 on 12/29/20.
//  Copyright © 2020 ys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
        
    }
    @IBAction func calculateTip(_ sender: Any) {
        //get teh bill amount
        let bill = Double(billField.text!) ?? 0
        
        //calculte the tip and total
        let tipPercentages = [0.15, 0.20, 0.22]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
        
        
        
        
        
    }
    
    
    
    
    
    
    
}

