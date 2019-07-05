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
    
    var personApi = PersonApi()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        personApi.getRandomPersonUrlSession { (person) -> (Void) in
            if let person = person {
                print(person.name)
            }
        }
        
    }


}

