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
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func pressedToC(_sender: UIButton){
        if tempValueText.text == "" {
            return
            
        }else {
             let result = Double(tempValueText.text!)! - 32.0 * (5.0/9.0)
            resultLabel.text = String(result) + " C"
        }
    }
    
    
    @IBAction func pressedToF(_sender: UIButton){
        if tempValueText.text == "" {
            return
            
        }else {
            let result2 = Double(tempValueText.text!)! * (9.0/5.0) + 32.0
            resultLabel.text = String(result2) + " F"
        }
    }
}
