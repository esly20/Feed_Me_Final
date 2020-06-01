//
//  ViewController.swift
//  Feed Me
//
//  Created by student on 5/14/20.
//  Copyright © 2020 CSC509. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    let defaults = UserDefaults.standard
    let salScore: Int = 0
    let vicScore: Int = 0
    let doreenScore: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        let scoreArray: [Int] = [salScore, vicScore, doreenScore]
        defaults.set(scoreArray, forKey: "scores" )
    }
    
    @IBAction func beginPressed(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        let selectedVC = storyboard.instantiateViewController(identifier: "resVC") as! resViewController
        navigationController?.pushViewController(selectedVC, animated: true)
     
    }
    
}

