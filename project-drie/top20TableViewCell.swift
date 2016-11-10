//
//  top20TableViewCell.swift
//  project-drie
//
//  Created by Sjors Verhoef on 05-11-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit

class top20TableViewCell: UITableViewCell {

    @IBOutlet weak var carNameLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var aantalRatingLabel: UILabel!
    @IBOutlet weak var menuAfbeeldingLabel: UIImageView!
    
    override func awakeFromNib() {
            super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
