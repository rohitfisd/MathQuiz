//
//  OpViewController.swift
//  MathQuiz
//
//  Created by Ramarathinam, Rohit on 3/29/21.
//  Copyright © 2021 Ramarathinam, Rohit. All rights reserved.
//

import UIKit

class OpViewController: UIViewController {

    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        addButton.setTitleColor(.green, for: .normal)
    }
    
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        minusButton.setTitleColor(.green, for: .normal)
    }
    
    @IBAction func multiplyButtonPressed(_ sender: UIButton) {
        multiplyButton.setTitleColor(.green, for: .normal)
    }
    
    @IBAction func divideButtonPressed(_ sender: UIButton) {
        divideButton.setTitleColor(.green, for: .normal)
    }
}
