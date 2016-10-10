//
//  Pokemon.swift
//  Bandaru_Pokemon
//
//  Created by sreekanth b on 10/9/16.
//  Copyright © 2016 sreekanth bandaru. All rights reserved.
//

import Foundation
class Pokemon{
    var name:String
    var catchRate:Double
    var image:String
    
    init(name:String,catchRate:Double,image:String){
        self.name = name
        self.catchRate = catchRate
        self.image = image
    }
}