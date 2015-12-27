//
//  ResumeView.swift
//  pizza
//
//  Created by KoldoMac on 27/12/15.
//  Copyright © 2015 KoldoMac. All rights reserved.
//

import WatchKit
import Foundation


class ResumeView: WKInterfaceController {
    
    @IBOutlet var resume: WKInterfaceLabel!
    var resumen : String = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        
        let con = context as! Pizza
        
        resumen = "Tamaño: \(con.size)\r" + "Masa: \(con.body)\r" + "Queso: \(con.cheese)\r"
        
        if (con.food.count > 0) {
            resumen += "Ingredientes:" + "\r"
            for clave in con.food.values {
                resumen +=  " - " + clave + "\r"
            }
        }
        resume.setText(resumen)
    }

    override func willActivate() {

        super.willActivate()
    }

    override func didDeactivate() {

        super.didDeactivate()
    }

    @IBAction func btnEnviarCocina_Tap() {
        
        if (resumen.isEmpty) {
            let action3 = WKAlertAction(title: "Ok", style: .Cancel) {}
            self .presentAlertControllerWithTitle("Pizza", message: "Debe elegir más ingredientes", preferredStyle:.Alert, actions: [action3])
        }
    }
}
