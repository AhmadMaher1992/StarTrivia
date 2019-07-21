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
    var currentVehicle = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        vehicles = person.vechileUrls
        nextBtn.isEnabled = vehicles.count > 1
        previousBtn.isEnabled = false
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
        currentVehicle-=1
        setButtonState()
    }
    
    @IBAction func nextClicked(_ sender: Any) {
        currentVehicle+=1
       setButtonState()
    }
    
    
    //MARK : - SET Button Statr Function
    func setButtonState(){
        
        //Ternary operator -> value = (condition) ? chooseiftrue : chooseifFalse
        
        nextBtn.isEnabled = currentVehicle == vehicles.count - 1   ? false  : true
        previousBtn.isEnabled = currentVehicle == 0 ? false : true
        
        
        
//        if currentVehicle == 0 {
//            previousBtn.isEnabled = false
//
//        }else{
//            previousBtn.isEnabled = true
//        }
//
//        if currentVehicle == vehicles.count - 1 {
//            nextBtn.isEnabled = false
//        }else{
//            nextBtn.isEnabled = true
//        }
        
        getVehicle(url: vehicles[currentVehicle])
    }
    
    
}
