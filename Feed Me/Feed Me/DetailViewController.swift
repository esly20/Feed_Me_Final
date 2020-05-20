//
//  DetailViewController.swift
//  Feed Me
//
//  Created by student on 5/15/20.
//  Copyright © 2020 CSC509. All rights reserved.
//

import UIKit
import Foundation

class DetailViewController: UIViewController {
    let defaults = UserDefaults.standard
    var restaurant: [String] = []
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var detailsLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let slcRestaurant = defaults.array(forKey: "slcRestaurant") as? [String] {
            restaurant = slcRestaurant
        }
        nameLabel.text = restaurant[0]
        locationLabel.text = restaurant[1]
        detailsLabel.text = restaurant[2]
    }
}
