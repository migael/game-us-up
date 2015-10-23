//
//  person.swift
//  Game List
//
//  Created by Fhict on 16/10/15.
//  Copyright © 2015 Akin & Michael. All rights reserved.
//

import Foundation

class person {
    var name:String?
    var games = [game]()
    var personid:String?
    
    init(name:String, games:[game],personid:String){
        self.name = name
        self.games = games
        self.personid = personid
        
    }
}