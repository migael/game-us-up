//
//  person.swift
//  Game List
//
//  Created by Fhict on 16/10/15.
//  Copyright © 2015 Akin & Michael. All rights reserved.
//

import Foundation

class person {
    var name = "name"
    var games = [game]()
    
    init(name:String, games:[game]){
        self.name = name
        self.games = games
    }
}