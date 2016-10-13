//
//  Auto.swift
//  Hideous
//
//  Created by Sjors Verhoef on 13-10-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import Foundation

class Auto{
    
    var autoNaam:String!
    var gebruikersNaam:String
    var beoordeling:Double
    var aantalBeoordelingen:Int32
    
    init(carName:String!, userName:String, rating:Double, ratingCount:Int32){
        self.autoNaam = carName!
        self.gebruikersNaam = userName
        self.beoordeling = rating
        self.aantalBeoordelingen = ratingCount
        
    }
    
}
