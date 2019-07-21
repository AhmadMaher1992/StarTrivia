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
    
    let api = VehicleApi()
    var vehicles = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()

        vehicles = person.vechileUrls
        guard let firstVehicle = vehicles.first else {return}
        getVehicle(url: firstVehicle)
      
    }
    func getVehicle(url: String)  {
        api.getVehicle(url: url) { (vehicle) -> (Void) in
            if let vehicle = vehicle{
              self.setUPView(vehicle: vehicle)
            }
        }
    }
    
    //setUPView to UPDATE UI
    func setUPView(vehicle: Vehicle)  {
        nameLBL.text = vehicle.name
        modelLBL.text = vehicle.model
        makerLBL.text = vehicle.manufacturer
        costLBL.text = vehicle.cost
        lengthLBL.text = vehicle.length
        speedLBL.text = vehicle.speed
        crewLBL.text = vehicle.crew
        passenLBL.text = vehicle.passengers
        
    }

    @IBAction func previousClicked(_ sender: Any) {
    }
    
    @IBAction func nextClicked(_ sender: Any) {
    }
    
    
    
}
