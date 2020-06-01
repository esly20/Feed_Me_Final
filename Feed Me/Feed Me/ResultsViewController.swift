//
//  ResultsViewController.swift
//  Feed Me
//
//  Created by student on 5/29/20.
//  Copyright © 2020 CSC509. All rights reserved.
//

import UIKit
import Foundation

class ResultsViewController: UIViewController {
    let defaults = UserDefaults.standard
    var timeText: String = ""
    var guestText: String = ""
    var distanceText: String = ""
    var nameText: String = ""
    var salScore: Int = 0
    var vicScore: Int = 0
    var doreenScore: Int = 0
    var restName: String = ""
    var number = Int.random(in: 0 ..< 3)
    var namesList: [String] = ["Sal's Pizza South", "The Victorian Inn", "Doreen's Drive In"]

    @IBOutlet weak var restNameLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var rezDetailsLabel: UITextView!
  
    //learned hpw to set image programatically here: https://stackoverflow.com/questions/27039140/programmatically-set-image-to-uiimageview-with-xcode-6-1-swift
    @IBOutlet weak var pic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let resDetails = defaults.array(forKey: "resDetails") as? [String] {
            timeText = resDetails[0]
            guestText = resDetails[1]
            distanceText = resDetails[2]
            nameText = resDetails[3]
        }
        if let scores = defaults.array(forKey: "scores") as? [Int] {
            salScore = scores[0]
            vicScore = scores[1]
            doreenScore = scores[2]
        }
        if salScore > vicScore && salScore > doreenScore {
            restName = namesList[0]
            pic.image = UIImage(named: "sals")

        } else if vicScore > salScore && vicScore > doreenScore{
            restName = namesList[1]
            pic.image = UIImage(named: "victorian")

        } else if doreenScore > salScore && doreenScore > vicScore{
            restName = namesList[2]
            pic.image = UIImage(named: "doreen")

        } else{
            restName = namesList[number]
            // I know this isn't right
            pic.image = UIImage(named: "victorian")
        }
        
        let resetDefaults: [String] = []
        defaults.set(resetDefaults, forKey: "resDetails" )
        timeLabel.text = "\(timeText) PM"
        rezDetailsLabel.text = "Your reservation for \(guestText) guests under the name \(nameText) has been made at \(restName) less than \(distanceText) miles away."
        restNameLabel.text = restName
    }
    
}
