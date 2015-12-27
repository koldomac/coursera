//
//  CheeseView.swift
//  pizza
//
//  Created by KoldoMac on 27/12/15.
//  Copyright © 2015 KoldoMac. All rights reserved.
//

import WatchKit
import Foundation


class CheeseView: WKInterfaceController {

    @IBOutlet var cheesePicker: WKInterfacePicker!
    var queso   : String = ""
    var masa    : String = ""
    var tamaño  : String = ""
    
    var quesoList: [(String, String)] =
        [("Mozarella", "Mozarella"),
        ("Cheddar", "Cheddar"),
        ("Parmesano", "Parmesano"),
        ("Sin queso", "Sin queso")]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let con = context as! Pizza
        tamaño = con.size
        masa = con.body
    
    }

    override func willActivate() {
        super.willActivate()
        
        let pickerItems: [WKPickerItem] = quesoList.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
        }
        self.cheesePicker.setItems(pickerItems)
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

    @IBAction func cheesePicker_action(value: Int) {
        queso = quesoList[value].0
    }

    @IBAction func btnSiguiente_Tap() {
        let pizza = Pizza(newSize: self.tamaño, newBody: self.masa, newCheese: self.queso, newFood: [:])
        pushControllerWithName("FoodView", context: pizza)
    }
}
