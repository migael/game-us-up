//
//  admin.swift
//  Game List
//
//  Created by Fhict on 22/10/15.
//  Copyright © 2015 Akin & Michael. All rights reserved.
//

import Foundation

class admin{
    public static var allPeople = [person]()
    public static var allGroups = [group]()
    public static var loggedIn = "bob"
    
    init(){
        
    }
    
    func createFakeInfo(){
        //bob
        
            //games
        var bobGames = [game]()
        var bobGame = game(name: "Call of Duty", url: "url", gameid: "1")
        var bobGame2 = game(name: "Anno 2205", url: "url", gameid: "1")
        var bobGame3 = game(name: "Cookie Clicker", url: "url", gameid: "1")
        var bobGame4 = game(name: "League of legends", url: "url", gameid: "1")
        var bobGame5 = game(name: "Counter-Strike", url: "url", gameid: "1")
        
        
        
        bobGames.append(bobGame)
        bobGames.append(bobGame2)
        bobGames.append(bobGame3)
        bobGames.append(bobGame4)
        bobGames.append(bobGame5)
        
        
        
    }
    
    
    
}