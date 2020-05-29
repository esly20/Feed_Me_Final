//
//  slider2ViewController.swift
//  Feed Me
//
//  Created by student on 5/29/20.
//  Copyright © 2020 CSC509. All rights reserved.
//

import UIKit

class slider2ViewController: UIViewController {
    var sliderValue: Int = 0

    @IBAction func slider(_ sender: UISlider) {
        sliderValue = Int(sender.value)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        let selectedVC = storyboard.instantiateViewController(identifier: "slider3VC") as! slider3ViewController
        navigationController?.pushViewController(selectedVC, animated: true)
    }
    
}
