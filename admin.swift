//
//  admin.swift
//  Game List
//
//  Created by Fhict on 22/10/15.
//  Copyright © 2015 Akin & Michael. All rights reserved.
//

import Foundation

class admin{
    var allPeople = [person]()
    var allGroups = [group]()
    let loggedIn = "bob"
    
    init(){
        
    }
    
    func createFakeInfo(){
        //bob
        var allPeoplelocal = self.allPeople
            //games
        let bobGames = [game]()
        
        let bobGame = game(name: "Call of Duty", url: "url", gameid: "1")
        let bobGame2 = game(name: "Anno 2205", url: "url", gameid: "1")
        let bobGame3 = game(name: "Cookie Clicker", url: "url", gameid: "1")
        let bobGame4 = game(name: "League of legends", url: "url", gameid: "1")
        let bobGame5 = game(name: "Counter-Strike", url: "url", gameid: "1")
        
        let personbob = person(name: "bob", games: bobGames, personid: "2")
        
        
        personbob.games.append(bobGame)
        personbob.games.append(bobGame2)
        personbob.games.append(bobGame3)
        personbob.games.append(bobGame4)
        personbob.games.append(bobGame5)
        
        allPeoplelocal.append(personbob)
        
        
        self.allPeople = allPeoplelocal
        
    }
    
    func returnPeople() -> [person]{
        return self.allPeople
    }
    
    func returnLoggedIn() -> String{
        return self.loggedIn
    }
    
    
}