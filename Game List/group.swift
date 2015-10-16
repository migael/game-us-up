//
//  group.swift
//  Game List
//
//  Created by Fhict on 16/10/15.
//  Copyright © 2015 Akin & Michael. All rights reserved.
//

import Foundation

class group {
    var name = "name"
    var games = [game]()
    var people = [person]()
    
    init(name:String, games:[game],people:[person]){
        self.name = name
        self.games = games
        self.people = people
    }
}