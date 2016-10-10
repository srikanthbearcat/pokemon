//
//  ViewController.swift
//  Bandaru_Pokemon
//
//  Created by sreekanth b on 10/9/16.
//  Copyright © 2016 sreekanth bandaru. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let IMAGE_TAG = 0
    let NAME_TAG = 1
    let RATE_TAG = 2

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        PokemonFactory.createModel()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell!
        cell = tableView.dequeueReusableCellWithIdentifier("pokemon", forIndexPath: indexPath)
  //     let imageIV:UIImageView = cell.viewWithTag(IMAGE_TAG) as! UIImageView
        let nameLBL:UILabel = cell.viewWithTag(NAME_TAG) as! UILabel
        let rateLBL:UILabel = cell.viewWithTag(RATE_TAG) as! UILabel
        
        var displayOrder:[Pokemon] = PokemonFactory.pokemonTypes[indexPath.section].displayOrder()
        let pokemon:Pokemon = displayOrder[indexPath.row]
     //   imageIV.image = UIImage(named:"\(pokemon.image)")
        nameLBL.text = pokemon.name
        rateLBL.text = String(pokemon.catchRate)
        return cell
        
    }
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return PokemonFactory.pokemonTypes[section].type
    }
}

