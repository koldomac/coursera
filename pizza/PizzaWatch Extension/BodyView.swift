//
//  BodyView.swift
//  pizza
//
//  Created by KoldoMac on 27/12/15.
//  Copyright © 2015 KoldoMac. All rights reserved.
//

import WatchKit
import Foundation


class BodyView: WKInterfaceController {

    @IBOutlet var masaPicker: WKInterfacePicker!
    var masa    : String = ""
    var tamaño  : String = ""
    var masaList: [(String, String)] =
        [("Delgada", "Delgada"),
        ("Crujiente", "Crujiente"),
        ("Gruesa", "Gruesa")]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let con = context as! Pizza
        tamaño = con.size
    }

    override func willActivate() {
        super.willActivate()
        
        let pickerItems: [WKPickerItem] = masaList.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
        }
        self.masaPicker.setItems(pickerItems)
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

    @IBAction func masa_Action(value: Int) {
         masa = masaList[value].0
    }
    @IBAction func btnSiguiente_Tap() {
        let pizza = Pizza(newSize: self.tamaño, newBody: self.masa, newCheese: "", newFood: [:])
        pushControllerWithName("CheeseView", context: pizza)
    }
}
