//
//  StarshipsVC.swift
//  StarTrivia
//
//  Created by mac on 7/19/19.
//  Copyright © 2019 maher.eisa. All rights reserved.
//

import UIKit

class StarshipsVC: UIViewController , PersonProtocol{
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(person.name)
    }
    


}
