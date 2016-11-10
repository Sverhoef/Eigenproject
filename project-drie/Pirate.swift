//
//  Pirate.swift
//  project-drie
//
//  Created by Sjors Verhoef on 20-09-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import Foundation

class Auto{
    
    var autoNaam:String!
    var gebruikerNaam:String
    var aantalBeoordeling:String
    var beoordeling:String
    var afbeeldingNaam:String
    var afbeeldingNaamMenu:String
    var beschrijving: String
    
    init(carName:String!, userName:String, ratingCount:String, rating:String, imageName:String, menuImageName:String, discription:String){
        self.autoNaam = carName!
        self.gebruikerNaam = userName
        self.aantalBeoordeling = ratingCount
        self.beoordeling = rating
        self.afbeeldingNaam = imageName
        self.afbeeldingNaamMenu = menuImageName
        self.beschrijving = discription
        
    }

}
