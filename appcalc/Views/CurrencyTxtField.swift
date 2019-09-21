//
//  CurrencyTxtField.swift
//  appcalc
//
//  Created by Dante on 2019/9/21.
//  Copyright © 2019 cinderella. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    
    
    
    
    
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
       //Refactor, more elegant
       /*
        if let p = placeholder{
            
            let place = NSAttributedString(string: p, attributes:[.foregroundColor:#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)] )
            
            attributedPlaceholder=place
            
            textColor=#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
       */
        
    }
        
    func customizeView(){
        backgroundColor=#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2509903169)
        layer.cornerRadius=5.0
        textAlignment = .center
        
        // Original
        if placeholder==nil {
            placeholder=" "
        }
        
        let place = NSAttributedString(string: placeholder!, attributes:[.foregroundColor:#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)] )
        attributedPlaceholder=place
        textColor=#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}

    
  
    

