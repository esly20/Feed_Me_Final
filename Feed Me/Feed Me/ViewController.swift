//
//  ViewController.swift
//  Feed Me
//
//  Created by student on 5/14/20.
//  Copyright © 2020 CSC509. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }    
    @IBAction func beginPressed(_ sender: Any) {
    
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        let selectedVC = storyboard.instantiateViewController(identifier: "resVC") as! resViewController
        navigationController?.pushViewController(selectedVC, animated: true)
     
    }
    
}

