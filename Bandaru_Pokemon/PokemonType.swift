//
//  PokemonType.swift
//  Bandaru_Pokemon
//
//  Created by sreekanth b on 10/9/16.
//  Copyright © 2016 sreekanth bandaru. All rights reserved.
//

import Foundation
class PokemonType{
    var type:String
    var pokemons = [String:Pokemon]()
    
    init(type:String,pokemons:[String:Pokemon]){
        self.type = type
        self.pokemons = pokemons
    }
    
    func displayOrder() -> [Pokemon] {
        let unsorted = Array(pokemons.values)
        return unsorted.sort({$0.catchRate>$1.catchRate})
    }
    func getCatchRate(name:String) -> Double {
        return pokemons["name"]!.catchRate
    }
    func addPokemon(pokemon:Pokemon) {
        pokemons["pokemon.name"] = pokemon
    }
    
}