//
//  top20TableViewCell.swift
//  project-drie
//
//  Created by Sjors Verhoef on 05-11-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit

class FullListTableViewCell: UITableViewCell {
    
    //@IBOutlet weak var carNameLabel: UILabel!
    //@IBOutlet weak var userNameLabel: UILabel!
    //@IBOutlet weak var ratingLabel: UILabel!
    //@IBOutlet weak var aantalRatingLabel: UILabel!
    //@IBOutlet weak var menuAfbeeldingLabel: UIImageView!
    
    @IBOutlet weak var FLcarNameLabel: UILabel!
    @IBOutlet weak var FLuserNameLabel: UILabel!
    @IBOutlet weak var FLratingLabel: UILabel!
    @IBOutlet weak var FLaantalRatingLabel: UILabel!
    @IBOutlet weak var FLmenuAfbeeldingLabel: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
