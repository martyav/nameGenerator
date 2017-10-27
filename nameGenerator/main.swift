//
//  main.swift
//  nameGenerator
//
//  Created by Marty Hernandez Avedon on 10/26/17.
//  Copyright © 2017 Marty's . All rights reserved.
//

import Foundation

let adjectives = Adjectives.select(.all)
let nouns = Nouns.select(.all)

func randomIndex(for array: [String]) -> Int {
    let limit = UInt32(array.count)
    
    return Int(arc4random_uniform(limit))
}

func randomWord(from array: [String]) -> String {
    let index = randomIndex(for: array)
    
    return array[index]
}

func pick(_ number: Int) {
    var iterator = 0
    
    while iterator < number {
        print(randomWord(from: adjectives) + randomWord(from: nouns).capitalized)
        iterator += 1
    }
}

pick(5)
