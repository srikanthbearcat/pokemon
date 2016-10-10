//
//  PokemonFactory.swift
//  Bandaru_Pokemon
//
//  Created by sreekanth b on 10/9/16.
//  Copyright © 2016 sreekanth bandaru. All rights reserved.
//

import Foundation
class PokemonFactory {
    static var pokemonTypes:[PokemonType] = []
    class func createModel() {
        pokemonTypes = [PokemonType(type:"Electric",pokemons: [
            "Pikachu":Pokemon(name:"Pikachu",catchRate:24.8,image:"Pikachu.png"),
            "Raichu":Pokemon(name:"Raichu",catchRate:9.8,image:"Raichu.png"),
            "Magnemite":Pokemon(name:"Magnemite",catchRate:24.8,image:"magnemite.png")]),PokemonType(type:"Normal",pokemons: [
            "Togepi":Pokemon(name:"Togepi",catchRate:24.8,image:"Togepi.png"),
            "Porygon":Pokemon(name:"Porygon",catchRate:5.9,image:"Porygon.png"),
            "Clefairy":Pokemon(name:"Clefairy",catchRate:19.6,image:"Clefairy.png")
            ])]

    }
    
}