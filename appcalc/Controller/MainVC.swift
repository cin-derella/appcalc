//
//  ViewController.swift
//  appcalc
//
//  Created by Dante on 2019/9/20.
//  Copyright © 2019 cinderella. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    
    @IBOutlet weak var resultLBl: UILabel!
    @IBOutlet weak var hoursLBl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        let calcBtn=UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor=#colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        print ("here reached")
        wageTxt.inputAccessoryView=calcBtn
        priceTxt.inputAccessoryView=calcBtn
        
        resultLBl.isHidden=true
        hoursLBl.isHidden=true
    
    }


    @objc func calculate(){
        
        if let wageTxt = wageTxt.text, let priceTxt=priceTxt.text{
            if let wage = Double(wageTxt), let price=Double(priceTxt){
                view.endEditing(true)
                resultLBl.isHidden=false
                hoursLBl.isHidden=false
                
                resultLBl.text="\(Wage.getHours(forWage:wage,andPrice:price))"
                
            }
            
        }
    }
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        
        resultLBl.isHidden=true
        hoursLBl.isHidden=true
        wageTxt.text=""
        priceTxt.text=""
        
        
    }
}

