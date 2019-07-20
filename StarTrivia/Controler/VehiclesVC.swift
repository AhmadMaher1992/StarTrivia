//
//  VehiclesVC.swift
//  StarTrivia
//
//  Created by mac on 7/19/19.
//  Copyright © 2019 maher.eisa. All rights reserved.
//

import UIKit

class VehiclesVC: UIViewController , PersonProtocol{
    var person: Person!
    
    
    @IBOutlet weak var nameLBL: UILabel!
    @IBOutlet weak var modelLBL: UILabel!
    @IBOutlet weak var makerLBL: UILabel!
    @IBOutlet weak var costLBL: UILabel!
    @IBOutlet weak var lengthLBL: UILabel!
    @IBOutlet weak var speedLBL: UILabel!
    @IBOutlet weak var crewLBL: UILabel!
    @IBOutlet weak var passenLBL: UILabel!
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(person.name)
    }
    

    @IBAction func previousClicked(_ sender: Any) {
    }
    
    @IBAction func nextClicked(_ sender: Any) {
    }
    
    
    
}
