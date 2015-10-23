//
//  game.swift
//  Game List
//
//  Created by Fhict on 16/10/15.
//  Copyright © 2015 Akin & Michael. All rights reserved.
//

import Foundation

class game {
    var name:String?
    var url:String?
    var gameid:String?
    
    init (name:String, url:String, gameid:String){
        self.name = name
        self.url = url
        self.gameid = gameid
    }
    
}