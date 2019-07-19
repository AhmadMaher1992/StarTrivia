//
//  FadeEnabledBtn.swift
//  StarTrivia
//
//  Created by mac on 7/18/19.
//  Copyright © 2019 maher.eisa. All rights reserved.
//

import UIKit



class FadeEnabledBtn: UIButton{
    
    override var isEnabled: Bool{
        didSet{
            if isEnabled{
                UIView.animate(withDuration: 0.4) {
                     self.alpha = 1.0
                }
               
            }else{
                UIView.animate(withDuration: 0.4) {
                    self.alpha = 0.5
                }
            }
        }
    }
    
    
}
