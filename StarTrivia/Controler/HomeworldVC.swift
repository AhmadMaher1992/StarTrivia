//
//  HomeworldVC.swift
//  StarTrivia
//
//  Created by mac on 7/19/19.
//  Copyright © 2019 maher.eisa. All rights reserved.
//

import UIKit

class HomeworldVC: UIViewController , PersonProtocol{
    
    @IBOutlet weak var nameLBL: UILabel!
    @IBOutlet weak var climateLBL: UILabel!
    @IBOutlet weak var terrainLBL: UILabel!
    @IBOutlet weak var populationLBL: UILabel!
    var person: Person!
    let api = HomeworldApi()
    
    
//    var person:Person!

    override func viewDidLoad() {
        super.viewDidLoad()
    
        api.getHomeworld(url: person.homeWorldUrl ) { (homeworld) -> (Void) in
            if let homeworld = homeworld {
                self.setupHomeworldUI(homeworld: homeworld)
            }
        }
        
    }

    
    func setupHomeworldUI(homeworld: Homeworld) {
        nameLBL.text = homeworld.name
        climateLBL.text  = homeworld.climate
        terrainLBL.text = homeworld.terrain
        populationLBL.text = homeworld.population
        
    }

}
