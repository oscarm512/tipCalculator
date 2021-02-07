//
//  SettingsViewController.swift
//  tipCalculator
//
//  Created by Oscar Mendoza on 2/6/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        let index = defaults.integer(forKey: "defaultTip")
        defaultTipControl.selectedSegmentIndex = index
        
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }
    
    
    @IBAction func defaultTipChanged(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        let index = defaultTipControl.selectedSegmentIndex
        defaults.set(index, forKey: "defaultTip")
        defaults.synchronize()
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
