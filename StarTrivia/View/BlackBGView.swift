//
//  BlackBGView.swift
//  StarTrivia
//
//  Created by maher on 6/26/19.
//  Copyright © 2019 maher.eisa. All rights reserved.


import UIKit
class BlackBGView: UIView {
  
    
    override func awakeFromNib() {
        layer.backgroundColor = Black_BG
        layer.cornerRadius = 10
    }
    
    
}
class BlackBGButton: UIButton {
    
    override func awakeFromNib() {
        layer.backgroundColor = Black_BG
        layer.cornerRadius = 10
    }
    
}
