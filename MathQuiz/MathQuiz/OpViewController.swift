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
    
    var isAddGreen: Bool = false
    var isMinusGreen: Bool  = false
    var isMultiplyGreen: Bool = false
    var isDivideGreen: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        if addButton.titleColor(for: .normal) == .green {
            addButton.setTitleColor(.systemYellow, for: .normal)
            isAddGreen = false
        } else {
            addButton.setTitleColor(.green, for: .normal)
            isAddGreen = true
        }
    }
    
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        if minusButton.titleColor(for: .normal) == .green {
            minusButton.setTitleColor(.systemYellow, for: .normal)
            isMinusGreen = false
        } else {
            minusButton.setTitleColor(.green, for: .normal)
            isMinusGreen = true
        }
    }
    
    @IBAction func multiplyButtonPressed(_ sender: UIButton) {
        if multiplyButton.titleColor(for: .normal) == .green {
            multiplyButton.setTitleColor(.systemYellow, for: .normal)
            isMultiplyGreen = false
        } else {
            multiplyButton.setTitleColor(.green, for: .normal)
            isMultiplyGreen = true
        }
    }
    
    @IBAction func divideButtonPressed(_ sender: UIButton) {
        if divideButton.titleColor(for: .normal) == .green {
            divideButton.setTitleColor(.systemYellow, for: .normal)
            isDivideGreen = false
        } else {
            divideButton.setTitleColor(.green, for: .normal)
            isDivideGreen = true
            print("test")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var array : [String] = []
        if segue.identifier == "toQuizScreen" {
            if isAddGreen {
                array.append("+")
            }
            if isMinusGreen {
                array.append("-")
            }
            if isMultiplyGreen {
                array.append("x")
            }
            if isDivideGreen {
                array.append("/")
            }
            let quizViewController = segue.destination as! QuizViewController
            quizViewController.operations = array
        }
    }
}
