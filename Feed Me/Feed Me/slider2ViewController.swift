//
//  slider2ViewController.swift
//  Feed Me
//
//  Created by student on 5/29/20.
//  Copyright © 2020 CSC509. All rights reserved.
//

import UIKit
import Foundation

class slider2ViewController: UIViewController {
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
            vicScore += sliderValue
            salScore += sliderValue
        } else {
            doreenScore += sliderValue*(-1)
        }
        let scoreArray: [Int] = [salScore, vicScore, doreenScore]
            defaults.set(scoreArray, forKey: "scores" )
        
        let selectedVC = storyboard.instantiateViewController(identifier: "slider3VC") as! slider3ViewController
        navigationController?.pushViewController(selectedVC, animated: true)
    }
    
}
