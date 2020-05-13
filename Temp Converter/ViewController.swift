//
//  ViewController.swift
//  Temp Converter
//
//  Created by Ugne Gliaudelyte on 4/23/19.
//  Copyright © 2019 Ugne Gliaudelyte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var tempValueText: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    Convert F to C
    @IBAction func pressedToC(_sender: UIButton){
        if tempValueText.text == "" {
            return
            
        }
        else {
            let fahrenheit = Int(tempValueText.text!)!
            let result = Int(Double((fahrenheit - 32)) / 1.8)
            resultLabel.text = String(Int(result)) + " C"
        }
    }
    
//    Convert C to F
    @IBAction func pressedToF(_sender: UIButton){
        if tempValueText.text == "" {
            return
            
        }
        else {
            let celsius = Int(tempValueText.text!)!
            let result2 = Int(Double(celsius) * (9/5)) + 32
            resultLabel.text = String(Int(result2)) + " F"
        }
    }
}
