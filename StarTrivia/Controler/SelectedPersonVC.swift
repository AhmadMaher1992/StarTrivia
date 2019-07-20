//
//  ViewController.swift
//  StarTrivia
//
//  Created by maher on 6/25/19.
//  Copyright © 2019 maher.eisa. All rights reserved.


import UIKit

class SelectedPersonVC: UIViewController {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var massLbl: UILabel!
    @IBOutlet weak var hairLbl: UILabel!
    @IBOutlet weak var birthYearLbl: UILabel!
    @IBOutlet weak var genderLbl: UILabel!
    @IBOutlet weak var homeworldBtn: UIButton!
    @IBOutlet weak var vehiclesBtn: UIButton!
    @IBOutlet weak var starshipsBtn: UIButton!
    @IBOutlet weak var filmsBtn: UIButton!
    
    
    
    var personApi = PersonApi()
    var person: Person!
   
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
      
    }

    @IBAction func randomClicked(_ sender: Any) {
        let random = Int.random(in: 1...87)
        personApi.getRandomPersonAlamoDecoder(id: random) { (person) -> (Void) in
            if let person = person {
                self.setupView(person: person)
                self.person = person
            }
        }
        
      
    
}
    
    //update UI Function
    func setupView(person: Person){
        nameLbl.text = person.name
        heightLbl.text = person.height
        massLbl.text = person.mass
        hairLbl.text = person.hair
        birthYearLbl.text = person.birthYear
        genderLbl.text = person.gender
        // Fade in & out first way
        homeworldBtn.isEnabled = !person.homeWorldUrl.isEmpty
        vehiclesBtn.isEnabled = !person.vechileUrls.isEmpty
        starshipsBtn.isEnabled = !person.starShipUrls.isEmpty
        filmsBtn.isEnabled = !person.filmUrls.isEmpty
        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        //        if segue.identifier == "HomeworldVC" {
//            if let destination = segue.destination as? HomeworldVC{
//                destination.person = person
//            }
//        }
      
//
//        switch segue.identifier {
//        case Segue.homeworld.rawValue:
//            if let destination = segue.destination as? HomeworldVC {
//                destination.person = person
//            }
//        case Segue.vehicles.rawValue :
//            if let destination = segue.destination as? VehiclesVC {
//                destination.person = person
//            }
//        case Segue.starships.rawValue:
//            if let destination = segue.destination as? StarshipsVC{
//                destination.person = person
//            }
//        case Segue.films.rawValue:
//            if let destination = segue.destination as? FilmsVC {
//                destination.person = person
//            }
//        default:
//            break
//        }
        
        if var destination = segue.destination as? PersonProtocol {
            destination.person = person
        }
      
        
        
    }
//    
//    enum Segue : String {
//        
//        case homeworld = "HomeworldVC"
//        case vehicles = "VehiclesVC"
//        case starships = "StarshipsVC"
//        case films = "FilmsVC"
//        
//    }
  
}


//MARK: - Person protocol
protocol PersonProtocol {
    var person: Person! {get set}
}


