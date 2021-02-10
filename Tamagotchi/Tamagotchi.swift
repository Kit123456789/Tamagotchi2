//
//  Tamagotchi.swift
//  Tamagotchi
//
//  Created by Kit Ropner on 22/01/2021.
//

import Foundation

class Tamagotchi: ObservableObject{
    @Published var isDead: Bool = false
    @Published var bladder: Int
    @Published var hunger: Int
    @Published var age: Int
    let name: String
    @Published var weight: Double
    @Published var height: Double
    @Published var hapiness: Int
    @Published var hygiene: Int
    
    init(){
        isDead = false
        bladder = 3
        hunger = 6
        age = 1
        name = "Greggory"
        weight = 5.5
        height = 6.6
        hapiness = 10
        hygiene = 9
    }
    
    func eatSnack(){
        hunger -= 2
        if hunger < 0{
            hunger = 0
        }
        weight += 0.3
        height += 0.1
        print("\(name) has been fed")
    }
    func playGame(){
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
    func eatMeal(){
        hunger -= 5
        if hunger < 0{
            hunger = 0
        }
        weight += 0.5
        height += 0.2
        
    }
    func bathroom(){
        hygiene += 5
        if hygiene > 10{
            hygiene = 10
        }
        bladder -= 5
        if bladder < 0{
            bladder = 0
        }
    }
    func aging(){
        age += 1
        if age == 100{
            isDead = true
        }
        bladder += 1
        if bladder > 10{
            isDead = true
        }
        height += 0.5
        if height > 100{
            isDead = true
        }
        weight -= 0.1
        if weight < 1{
            isDead = true
        }
        hapiness -= 1
        if hapiness < 0{
            isDead = true
        }
        hunger += 1
        if hunger > 10{
            isDead = true
        }
        hygiene -= 1
        if hygiene < 0{
            isDead = true
        }
    }
}

