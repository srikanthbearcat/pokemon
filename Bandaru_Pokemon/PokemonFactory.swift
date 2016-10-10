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
        pokemonTypes = [PokemonType(type:"Electric Type",pokemons: [
            "Pikachu":Pokemon(name:"Pikachu",catchRate:24.8,image:"pikachu.png"),
            "Raichu":Pokemon(name:"Raichu",catchRate:9.8,image:"raichu.png"),
            "Magnemite":Pokemon(name:"Magnemite",catchRate:24.8,image:"magnemite.png")])]
    }
}