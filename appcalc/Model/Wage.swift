//
//  wage.swift
//  appcalc
//
//  Created by Dante on 2019/9/21.
//  Copyright © 2019 cinderella. All rights reserved.
//

import Foundation

class Wage{
    //forWage is parameter name , wage is the varible name . return an int
    class func getHours(forWage wage:Double,andPrice price: Double) ->Int{
        return Int(ceil(price/wage))
        
    }
}
