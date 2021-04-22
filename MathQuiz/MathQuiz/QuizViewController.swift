//
//  QuizViewController.swift
//  MathQuiz
//
//  Created by Ramarathinam, Rohit on 3/29/21.
//  Copyright © 2021 Ramarathinam, Rohit. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    var operations: [String] = []
    var answer = 0
    var firstTimeAnswer = false
    var resultsDictionary: [String: String] = [:]
    var key : String = ""
    var num = 0
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var equationLabel: UILabel!
    @IBOutlet weak var userAnswer: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setQuestion()
        // Do any additional setup after loading the view.
    }
    
    func setQuestion() {
        userAnswer.text = ""
        firstTimeAnswer = true
        num += 1
        questionCounter.text = "Question \(num)"
        statusLabel.text = ""
        var n1: Int = 0
        var n2: Int = 0
        let op = operations[Int.random(in: 0...(operations.count-1))]
        if op != "/" {
            n1 = Int.random(in: 0...10)
            n2 = Int.random(in: 0...10)
            if op == "+" {
                answer = n1+n2
            }
            if op == "-" {
                answer = n1-n2
            }
            if op == "x" {
                answer = n1*n2
            }
        } else {
            n2 = Int.random(in: 1...10)
            n1 = n2 * Int.random(in: 0...10)
            answer = n1/n2
        }
        
        equationLabel.text = "\(n1) \(op) \(n2) = "
        if let lbl = equationLabel.text {
            key = lbl
        }
    }
    
    @IBAction func checkButtonTapped(_ sender: UIButton) {
            if userAnswer.text == "\(answer)" {
                statusLabel.text = "Correct!"
            } else {
                statusLabel.text = "Incorrect. Try again."
            }
            if (firstTimeAnswer) {
                resultsDictionary[key] = statusLabel.text
                firstTimeAnswer = false
            }
    }
        
    
    @IBAction func updateQuestion(_ sender: UIButton) {
        setQuestion()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultsScreen" {
            let resultsViewController = segue.destination as! ResultsViewController
            resultsViewController.results = resultsDictionary
        }
    }
}


//init?(coder: NSCoder, operations: [String]) {
    //self.operations = operations
    //super.init(coder: coder)
//}

//required init?(coder: NSCoder) {
    //fatalError("init(coder:) has not been implemented")
//}
