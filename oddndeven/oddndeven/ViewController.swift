//
//  ViewController.swift
//  oddndeven
//
//  Created by Peddinti,Sai Lavanya on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldOutlet: UITextField!
    
    
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButton(_ sender: UIButton) {
        let yournum=textFieldOutlet.text!
        let num=Int(yournum)
        if num! % 2 == 0
        {
            displayLabel.text="The \(num!) is even"
        }
        else{
            displayLabel.text="The \(num!) is odd"
        }
    }
    
}

