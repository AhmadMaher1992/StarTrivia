//
//  ViewController.swift
//  StarTrivia
//
//  Created by maher on 6/25/19.
//  Copyright © 2019 maher.eisa. All rights reserved.


import UIKit

class SelectedPersonVC: UIViewController {

  var personApi = PersonApi()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        personApi.getRandomPersonUrlSession()
        
    }


}

