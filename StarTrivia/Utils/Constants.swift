//
//  Constants.swift
//  StarTrivia
//
//  Created by maher on 6/26/19.
//  Copyright © 2019 maher.eisa. All rights reserved.


import UIKit

let Black_BG = UIColor.black.withAlphaComponent(0.6).cgColor
let URL_BASE = "https://swapi.co/api/"
let PERSON_URL = URL_BASE + "people/"
typealias PersonResponseCompletion = (Person?) -> (Void)
typealias HomeworldResponseCompletion = (Homeworld?) -> (Void)
