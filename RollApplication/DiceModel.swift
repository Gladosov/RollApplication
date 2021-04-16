//
//  File.swift
//  SwiftUI DiceRoll
//
//  Created by Admin on 16.04.2021.
//  
//

import Foundation

class DiceModel{

let sides: Int

init(sides: Int) {
    self.sides = sides
}

func showsides() -> Int{
    return sides
}

func roll() -> Int{
    let r = Int(arc4random_uniform(UInt32(sides))+1)
    return r
}

}
