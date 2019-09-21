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
    
    }


    @objc func calculate(){
        
        print ("We got here")
    }
}

