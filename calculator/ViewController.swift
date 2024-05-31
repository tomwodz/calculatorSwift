//
//  ViewController.swift
//  calculator
//
//  Created by Mini-M1 on 31/05/2024.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func numberPRessed(_ sender: UIButton) {
        let nr: String? = sender.titleLabel?.text!
        numberLabel.text = "\(numberLabel.text!)\(nr!)"
    }
    
    var lastNumber = 0
    @IBAction func plus(_ sender: Any) {
        lastNumber = Int(numberLabel.text!)!
        numberLabel.text = ""
    }
    
    @IBAction func equalPressed(_ sender: Any) {
        var actualNumber = Int(numberLabel.text!)!
        let c = Logic()
        let result = c.add(a: actualNumber, b: lastNumber)
        numberLabel.text = "\(result)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

