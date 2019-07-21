//
//  Starship.swift
//  StarTrivia
//
//  Created by mac on 7/21/19.
//  Copyright © 2019 maher.eisa. All rights reserved.
//
import Foundation

struct Starship : Codable {
    
    let name: String
    let model: String
    let starShipClass: String
    let manufacturer: String
    let hyperdrive: String
    let cost: String
    let length: String
    let speed: String
    let crew: String
    let passengers: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case model
        case starShipClass = "starship_class"
        case manufacturer
        case hyperdrive = "hyperdrive_rating"
        case cost = "cost_in_credits"
        case length
        case speed = "max_atmosphering_speed"
        case crew
        case passengers
    }
}
