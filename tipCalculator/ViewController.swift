//
//  ViewController.swift
//  tipCalculator
//
//  Created by Oscar Mendoza on 2/6/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billAmountTextField.becomeFirstResponder()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        let index = defaults.integer(forKey: "defaultTip")
        tipControl.selectedSegmentIndex = index
        
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        
        switch tipControl.selectedSegmentIndex {
                case 0:
                    self.view.backgroundColor = UIColor.systemTeal
                case 1:
                    self.view.backgroundColor = UIColor.systemGreen
                case 2:
                    self.view.backgroundColor = UIColor.systemGray
                default:
                    self.view.backgroundColor = UIColor.systemTeal
                }
        
    }
    

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        
        switch tipControl.selectedSegmentIndex {
                case 0:
                    self.view.backgroundColor = UIColor.systemTeal
                case 1:
                    self.view.backgroundColor = UIColor.systemGreen
                case 2:
                    self.view.backgroundColor = UIColor.systemGray
                default:
                    self.view.backgroundColor = UIColor.systemTeal
                }
    }
    
}

