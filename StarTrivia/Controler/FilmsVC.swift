//
//  FilmsVC.swift
//  StarTrivia
//
//  Created by mac on 7/19/19.
//  Copyright © 2019 maher.eisa. All rights reserved.
//

import UIKit

class FilmsVC: UIViewController , PersonProtocol{
    var person: Person!
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var episodeLbl: UILabel!
    @IBOutlet weak var directorLbl: UILabel!
    @IBOutlet weak var producerLbl: UILabel!
    @IBOutlet weak var releasedLbl: UILabel!
    @IBOutlet weak var crawlTxtView: UITextView!
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
