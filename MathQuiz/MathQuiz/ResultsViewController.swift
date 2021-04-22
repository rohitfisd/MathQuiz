//
//  ResultsViewController.swift
//  MathQuiz
//
//  Created by Ramarathinam, Rohit on 3/29/21.
//  Copyright © 2021 Ramarathinam, Rohit. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    
    @IBOutlet weak var correctAnswersLabel: UILabel!
    var results: [String: String] = [:]
    var correctAnswers = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showResults()
        correctAnswersLabel.text = "\(correctAnswers) / \(results.count)"
        // Do any additional setup after loading the view.
    }
    
    func showResults() {
        for (key, val) in results {
            if val == "Correct!" {
                correctAnswers += 1
            }
        }
    }
     
    @IBAction func nextButtonPressed(_ sender: Any) {
        
    }
    
}
