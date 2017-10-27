//
//  Nouns.swift
//  nameGenerator
//
//  Created by Marty Hernandez Avedon on 10/26/17.
//  Copyright © 2017 Marty's . All rights reserved.
//

import Foundation

enum Nouns {
    case organics, structures, cryptids, jobs, abstractions, all
    
   static  func select(_ noun: Nouns) -> [String]  {
        switch noun {
        case .all:
            return Nouns.select(.organics) + Nouns.select(.structures) + Nouns.select(.cryptids) + Nouns.select(.jobs) + Nouns.select(.abstractions)
        case .organics:
            return [
                "milk"
                , "wood"
                , "juice"
                , "leaf"
                , "weasel"
                , "ferret"
                , "marten"
                , "swift"
                , "mandible"
                , "wolf"
                , "hyena"
                , "eye"
                , "skull"
            ]
        case .structures:
            return  [
                "lattice"
                , "cavern"
                , "warren"
                , "system"
                , "fidget"
                , "planet"
                , "alchemy"
                , "chemistry"
            ]
        case .cryptids:
            return [
                "wyrm"
                , "werewolf"
                , "alter"
                , "avatar"
                , "unicorn"
                , "goblin"
                , "gremlin"
                , "gnome"
                , "kobold"
                , "miracle"
            ]
        case .jobs:
            return [
                "courier"
                , "messenger"
                , "designer"
                , "artist"
                , "scribe"
            ]
        case .abstractions:
            return [
                "malevolence"
                , "cheer"
                , "dependency"
                , "awe"
                , "plane"
            ]
        }
    }
}
