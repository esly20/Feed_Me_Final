//
//  MyMealsTableViewCell.swift
//  Feed Me
//
//  Created by student on 5/15/20.
//  Copyright © 2020 CSC509. All rights reserved.
//

import UIKit

class MyMealsTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var detailsLabel: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
