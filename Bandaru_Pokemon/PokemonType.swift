//
//  PokemonType.swift
//  Bandaru_Pokemon
//
//  Created by sreekanth b on 10/9/16.
//  Copyright © 2016 sreekanth bandaru. All rights reserved.
//

import Foundation
//Describes a Pokemontype object that can store pokemons of that type
class PokemonType{
    var type:String
    var pokemons = [String:Pokemon]()
    
    init(type:String,pokemons:[String:Pokemon]){
        self.type = type
        self.pokemons = pokemons
    }
    //Display pokemons in descendong order
    func displayOrder() -> [Pokemon] {
        let unsorted = Array(pokemons.values)
        return unsorted.sort({$0.catchRate>$1.catchRate})
    }
    //Returns catchrate of Pokemon when name is passed as argument
    func getCatchRate(name:String) -> Double {
        return pokemons["name"]!.catchRate
    }
    //Adds pokemon to the dictionary
    func addPokemon(pokemon:Pokemon) {
        pokemons["pokemon.name"] = pokemon
    }
    
}