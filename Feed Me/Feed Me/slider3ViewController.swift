//
//  slider3ViewController.swift
//  Feed Me
//
//  Created by student on 5/29/20.
//  Copyright © 2020 CSC509. All rights reserved.
//

import UIKit
import Foundation

class slider3ViewController: UIViewController {
    let defaults = UserDefaults.standard
    var sliderValue: Int = 0
    var salScore: Int = 0
    var vicScore: Int = 0
    var doreenScore: Int = 0
    
    @IBAction func slider(_ sender: UISlider) {
        sliderValue = Int(sender.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let scores = defaults.array(forKey: "scores") as? [Int] {
            salScore = scores[0]
            vicScore = scores[1]
            doreenScore = scores[2]
        }
    }
    
    @IBAction func nextPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        if sliderValue >= 0 {
            salScore += sliderValue
            doreenScore += sliderValue
        } else {
            vicScore += sliderValue*(-1)
        }
        print(salScore, vicScore, doreenScore)
        let scoreArray: [Int] = [salScore, vicScore, doreenScore]
        defaults.set(scoreArray, forKey: "scores" )
        
        let selectedVC = storyboard.instantiateViewController(identifier: "resultsVC") as! ResultsViewController
        navigationController?.pushViewController(selectedVC, animated: true)
    }
}
