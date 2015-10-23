//
//  TableViewController.swift
//  Game List
//
//  Created by Fhict on 22/10/15.
//  Copyright © 2015 Akin & Michael. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    var allpeople = [person]()
    var loggedIn = "bob"
    
    /*
    var
    
    var loggedIn = admin.returnLoggedIn()
    
*/
    var adminpage = admin()
    
    var games = [game]()
    var selectedperson = person(name: "bob", games: [game](), personid: "aMdivided")
    
// wie is de logged in user?
    func selectuser(name:String){
        for person in self.allpeople {
            if (person.name == name){
                selectedperson = person
            
            }
        }
    }


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // return admin vars
        adminpage.createFakeInfo()
        self.allpeople = adminpage.returnPeople()
        self.loggedIn = adminpage.returnLoggedIn()
        
        
        
        selectuser(loggedIn)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return selectedperson.games.count
    }

// vult de rijen met games van de selected persoon
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
// bob logt in
        
        // Configure the cell...
        var currentRow = indexPath.row
        var currentGames = self.selectedperson.games
        var currentGame = currentGames[currentRow]
        
        
        
        
        cell.textLabel?.text = currentGame.name
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
