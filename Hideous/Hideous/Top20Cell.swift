//
//  Top20Cell.swift
//  Hideous
//
//  Created by Sjors Verhoef on 13-10-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit

class Top20Cell: UITableViewCell {

    @IBOutlet weak var autoNaamLabel: UILabel!
    @IBOutlet weak var gebruikerNaamLabel: UILabel!
    @IBOutlet weak var beoordelingLabel: UILabel!
    @IBOutlet weak var aantalBeoordelingenLabel: UILabel!
    @IBOutlet weak var afbeelding: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  
    func setAutoData(auto:Auto)
        {
            self.autoNaamLabel.text = auto.autoNaam
            self.gebruikerNaamLabel.text = auto.gebruikersNaam
            self.beoordelingLabel.text = "\(auto.beoordeling)"
            self.aantalBeoordelingenLabel.text = "\(auto.aantalBeoordelingen)"
            //self.afbeelding.image = ""
        }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
