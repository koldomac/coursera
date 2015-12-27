//
//  Pizza.swift
//  pizza
//
//  Created by KoldoMac on 27/12/15.
//  Copyright © 2015 KoldoMac. All rights reserved.
//

import WatchKit

class Pizza: NSObject {
    
    var size    : String = ""
    var body    : String = ""
    var cheese  : String = ""
    var food    : [String:String] = [:]
    
    init(newSize:String, newBody:String, newCheese:String, newFood:[String:String]) {
        size = newSize
        body = newBody
        cheese = newCheese
        food = newFood
    }
}
