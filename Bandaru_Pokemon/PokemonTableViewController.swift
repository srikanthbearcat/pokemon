//
//  PokemonTableViewController.swift
//  Bandaru_Pokemon
//
//  Created by Bandaru,Sreekanth on 10/10/16.
//  Copyright © 2016 sreekanth bandaru. All rights reserved.
//

import UIKit
//TableViewController for displaying pokemons and their catch rate
class PokemonTableViewController: UITableViewController {
    let IMAGE_TAG = 10
    let NAME_TAG = 1
    let RATE_TAG = 2
    override func viewDidLoad() {
        super.viewDidLoad()
        PokemonFactory.createModel()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Returns number of sections in a table
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return PokemonFactory.pokemonTypes.count
    }
    
    //Returns number of rows in section
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PokemonFactory.pokemonTypes[section].pokemons.count
    }
    
    //Configures a cell in tableview
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell!
        cell = tableView.dequeueReusableCellWithIdentifier("pokemon", forIndexPath: indexPath)
        let nameLBL:UILabel = cell.viewWithTag(NAME_TAG) as! UILabel
        let rateLBL:UILabel = cell.viewWithTag(RATE_TAG) as! UILabel
        let imageIV:UIImageView = cell.viewWithTag(IMAGE_TAG) as! UIImageView
        
        
        var displayOrder:[Pokemon] = PokemonFactory.pokemonTypes[indexPath.section].displayOrder()
        let pokemon:Pokemon = displayOrder[indexPath.row]
        imageIV.image = UIImage(named:"\(pokemon.image)")
        nameLBL.text = pokemon.name
        rateLBL.text = String(pokemon.catchRate)
        return cell
    }
    
    //Displays header for a section in table view
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return PokemonFactory.pokemonTypes[section].type
    }
    
    //Called when a cell in the table view is selected
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        PokemonFactory.pokemonTypes[indexPath.section].displayOrder()[indexPath.row].catchRate += 1
        self.tableView.reloadData()
        
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
