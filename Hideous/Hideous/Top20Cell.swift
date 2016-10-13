//
//  Top20Cell.swift
//  Hideous
//
//  Created by Sjors Verhoef on 13-10-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import UIKit

class Top20Cell: UITableViewCell {

     var selectedAuto: Auto?
    
    @IBOutlet weak var autoImageView: UIImageView!
    @IBOutlet weak var autoNaamLabel: UILabel!
    @IBOutlet weak var gebruikerNaamLabel: UILabel!
    @IBOutlet weak var beoordelingLabel: UILabel!
    @IBOutlet weak var aantalBeoordelingenLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        /*
        self.autoNaamLabel.text = self.selectedAuto?.autoNaam
        self.gebruikerNaamLabel.text = self.selectedAuto?.gebruikersNaam
        self.beoordelingLabel.text = self.selectedAuto?.beoordeling << MOET NAAR STRING "string()" Werkt niet
        self.aantalBeoordelingenLabel.text = self.selectedAuto?.aantalBeoordelingen << MOET NAAR STRING "string()" Werkt niet
        */
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
