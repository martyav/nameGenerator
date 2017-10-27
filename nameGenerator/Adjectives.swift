//
//  Adjectives.swift
//  nameGenerator
//
//  Created by Marty Hernandez Avedon on 10/26/17.
//  Copyright © 2017 Marty's . All rights reserved.
//

import Foundation

enum Adjectives {
    case colors, damages, textures, shapes, chemicalCompositions, astronomies, innerStates, technological, all
    
   static  func select(_ keyWord: Adjectives) -> [String] {
        switch keyWord {
        case .all:
            return Adjectives.select(.colors) + Adjectives.select(.textures) + Adjectives.select(.shapes) + Adjectives.select(.chemicalCompositions) + Adjectives.select(.astronomies) + Adjectives.select(.innerStates) + Adjectives.select(.technological)
        case .colors:
            return [
                "cobalt"
                , "violet"
                , "ultraviolet"
                , "infrared"
                , "emerald"
                , "dark"
                , "cyan"
                , "pale"
            ]
        case .damages:
            return [
                "burnt"
                , "wasted"
                , "fried"
                , "baked"
                , "crushed"
            ]
        case .textures:
            return [
                "fuzzy"
                , "soft"
                , "liquid"
                , "shiny"
                , "glitter"
                , "sludge"
            ]
        case .chemicalCompositions:
            return [
                "lactic"
                , "mercurial"
                , "silver"
                , "brass"
                , "organic"
                , "photonic"
                , "vinyl"
                , "plastic"
                , "gold"
                , "crystal"
                , "hermetical"
                , "ecto"
            ]
        case .shapes:
           return [
                "semilunate"
                , "angular"
            ]
        case .astronomies:
            return [
                "xenomorphic"
                , "galactic"
                , "cosmic"
                , "martian"
            ]
        case .innerStates:
            return [
                "brash"
                , "bold"
                , "sublime"
                , "heightened"
                , "tense"
                , "twitchy"
                , "ghost"
                , "lonely"
                , "mental"
                , "psychic"
                , "digital"
            ]
        case .technological:
            return [
                "hyperbolic"
                , "artificial"
                , "cyborg"
                , "cybernetic"
                , "augmented"
            ]
        }
    }
}
