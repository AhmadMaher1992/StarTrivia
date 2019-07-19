//
//  Person.swift
//  StarTrivia
//
//  Created by maher on 6/29/19.
//  Copyright © 2019 maher.eisa. All rights reserved.
//

//import Foundation
//
//struct Person {
//
//    let name: String
//    let height: String
//    let mass: String
//    let hair: String
//    let birthYear: String
//    let gender: String
//    let homeWorldUrl: String
//    let filmUrls: [String]
//    let vechileUrls: [String]
//    let starShipUrls: [String]
//
//}

import Foundation

struct Person : Codable{
    
    let name: String
    let height: String
    let mass: String
    let hair: String
    let birthYear: String
    let gender: String
    let homeWorldUrl: String
    let filmUrls: [String]
    let vechileUrls: [String]
    let starShipUrls: [String]
    
    //Enum Enclude Different Cases
    enum CodingKeys: String , CodingKey {
        case name
        case height
        case mass
        case hair = "hair_color"
        case birthYear = "birth_year"
        case gender
        case homeWorldUrl = "homeworld"
        case filmUrls = "films"
        case vechileUrls = "vehicles"
        case starShipUrls = "starships"
        
    }
    
}
