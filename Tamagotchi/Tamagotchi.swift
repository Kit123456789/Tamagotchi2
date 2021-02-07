//
//  Tamagotchi.swift
//  Tamagotchi
//
//  Created by Kit Ropner on 22/01/2021.
//

import Foundation

struct Tamagotchi{
    var isHealthy: Bool = true
    var bladder: Int
    var hunger: Int
    var age: Int
    let name: String
    var weight: Double
    var height: Double
    var hapiness: Int
    var hygiene: Int
    
    mutating func eatSnack(){
        hunger -= 2
        if hunger < 0{
            hunger = 0
        }
        weight += 0.3
        height += 0.1
        print("\(name) has been fed")
    }
    mutating func playGame(){
        hapiness += 3
        if hapiness > 10{
            hapiness = 10
        }
        weight -= 0.4
        if weight < 1{
            weight = 1
        }
        print("\(name) loves the game!")
    }
    mutating func eatMeal(){
        hunger -= 5
        if hunger < 0{
            hunger = 0
        }
        weight += 0.5
        height += 0.2
        
    }
    mutating func bathroom(){
        hygiene += 5
        if hygiene > 10{
            hygiene = 10
        }
        bladder -= 5
        if bladder < 0{
            bladder = 0
        }
    }
    mutating func aging(){
        age += 1
        if age == 100{
            isHealthy = false
        }
        bladder += 1
        if bladder > 10{
            isHealthy = false
        }
        height += 0.5
        if height > 100{
            isHealthy = false
        }
        weight -= 0.1
        if weight < 1{
            isHealthy = false
        }
        hapiness -= 1
        if hapiness < 0{
            isHealthy = false
        }
        hunger += 1
        if hunger > 10{
            isHealthy = false
        }
        hygiene -= 1
        if hygiene < 0{
            isHealthy = false
        }
    }
}

