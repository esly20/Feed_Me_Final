//
//  SliderViewController.swift
//  Feed Me
//
//  Created by student on 5/29/20.
//  Copyright © 2020 CSC509. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {

    var sliderValue: Int = 0
    
    @IBAction func slider(_ sender: UISlider) {
        sliderValue = Int(sender.value)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        let selectedVC = storyboard.instantiateViewController(identifier: "slider2VC") as! slider2ViewController
        navigationController?.pushViewController(selectedVC, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
