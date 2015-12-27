//
//  SizeView.swift
//  pizza
//
//  Created by KoldoMac on 27/12/15.
//  Copyright © 2015 KoldoMac. All rights reserved.
//

import WatchKit
import Foundation


class SizeView: WKInterfaceController {

    @IBOutlet var sizePicker: WKInterfacePicker!
    var tamaño : String = ""
    var tamList: [(String, String)] =
        [("Pequeña", "Pequeña"),
        ("Mediana", "Mediana"),
        ("Grande", "Grande")]
    
    @IBAction func size_Action(value: Int) {
        tamaño = tamList[value].0
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        super.willActivate()
        
        let pickerItems: [WKPickerItem] = tamList.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
        }
        self.sizePicker.setItems(pickerItems)
    }

    override func didDeactivate() {
        super.didDeactivate()
    }
    
    @IBAction func btnSiguiente_Tap() {
        let pizza = Pizza(newSize: tamaño, newBody: "", newCheese: "", newFood: [:])
        pushControllerWithName("BodyView", context: pizza)
    }
}
