//
//  FoodView.swift
//  pizza
//
//  Created by KoldoMac on 27/12/15.
//  Copyright © 2015 KoldoMac. All rights reserved.
//

import WatchKit
import Foundation


class FoodView: WKInterfaceController {

    var queso   : String = ""
    var masa    : String = ""
    var tamaño  : String = ""
    var food    : [String:String] = [:]
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let con = context as! Pizza
        tamaño = con.size
        masa = con.body
        queso = con.cheese
    }

    override func willActivate() {
        super.willActivate()
        
    }

    override func didDeactivate() {
        super.didDeactivate()
    }
    
    @IBAction func pavo(value: Bool) {
        if (value) {
            self.food.updateValue("Pavo", forKey: "Pavo")
        } else {
            self.food.removeValueForKey("Pavo")
        }
    }
    @IBAction func pepperoni(value: Bool) {
        if (value) {
            self.food.updateValue("Pepperoni", forKey: "Pepperoni")
        } else {
            self.food.removeValueForKey("Pepperoni")
        }
    }
    @IBAction func aceitunas(value: Bool) {
        if (value) {
            self.food.updateValue("Aceitunas", forKey: "Aceitunas")
        } else {
            self.food.removeValueForKey("Aceitunas")
        }
    }
    @IBAction func anchoas(value: Bool) {
        if (value) {
            self.food.updateValue("Anchoas", forKey: "Anchoas")
        } else {
            self.food.removeValueForKey("Anchoas")
        }
    }
    @IBAction func atun(value: Bool) {
        if (value) {
            self.food.updateValue("Atún", forKey: "Atún")
        } else {
            self.food.removeValueForKey("Atún")
        }
    }
    @IBAction func cebolla(value: Bool) {
        if (value) {
            self.food.updateValue("Cebolla", forKey: "Cebolla")
        } else {
            self.food.removeValueForKey("Cebolla")
        }
    }

    @IBAction func btnSiguiente_Tap() {
        let pizza = Pizza(newSize: self.tamaño, newBody: self.masa, newCheese: self.queso, newFood: self.food)
        pushControllerWithName("ResumeView", context: pizza)
    }
}
