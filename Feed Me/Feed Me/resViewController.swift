//
//  resViewController.swift
//  Feed Me
//
//  Created by student on 5/29/20.
//  Copyright © 2020 CSC509. All rights reserved.
//

import UIKit
import Foundation

class resViewController: UIViewController {
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var timeInput: UITextField!
    @IBOutlet weak var guestsInput: UITextField!
    @IBOutlet weak var distanceInput: UITextField!
    @IBOutlet weak var nameInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func confirmPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        let selectedVC = storyboard.instantiateViewController(identifier: "sliderVC") as! SliderViewController
        
        let time = timeInput.text!
        let guests = guestsInput.text!
        let distance = distanceInput.text!
        let name = nameInput.text!
        
        let resDetails: [String] = [time, guests, distance, name]
            defaults.set(resDetails, forKey: "resDetails" )
        
        navigationController?.pushViewController(selectedVC, animated: true)
    }
}
