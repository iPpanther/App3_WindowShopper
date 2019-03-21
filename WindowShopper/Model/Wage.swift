//
//  Wage.swift
//  WindowShopper
//
//  Created by Peerapol on 21/3/2562 BE.
//  Copyright © 2562 iPpanther. All rights reserved.
//

import Foundation
class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
