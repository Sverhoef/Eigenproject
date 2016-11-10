//
//  AantalGlobal.swift
//  project-drie
//
//  Created by Sjors Verhoef on 10-11-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import Foundation

class AantalGlobal{
    
    var een:Int32 = 0
    
    func setEen(int:Int32) {
        self.een = int
    }
    func getEen() -> Int32
    {
        return een
    }
    
}

var aantallen = AantalGlobal()
