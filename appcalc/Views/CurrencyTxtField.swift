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
    
    override func draw(_ rect: CGRect) {
        let size:CGFloat=30
        let currencyLBl=UILabel(frame: CGRect(x: 15, y: (frame.size.height/2)-size/2, width: size, height: size))
        currencyLBl.backgroundColor=#colorLiteral(red: 0.6653497787, green: 0.7160297862, blue: 0.7869429852, alpha: 0.8045774648)
        currencyLBl.textAlignment = .center
        currencyLBl.textColor=#colorLiteral(red: 0.1580310881, green: 0.1580310881, blue: 0.1580310881, alpha: 1)
        currencyLBl.layer.cornerRadius=5.0
        currencyLBl.clipsToBounds=true
        
        let formatter=NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "zh_CN")
        print(formatter.locale)
        currencyLBl.text = formatter.currencySymbol
        addSubview(currencyLBl)
    }
    
    
    
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
        
        clipsToBounds=true
        
        // Original
        if placeholder==nil {
            placeholder=" "
        }
        
        let place = NSAttributedString(string: placeholder!, attributes:[.foregroundColor:#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)] )
        attributedPlaceholder=place
        textColor=#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}

    
  
    

