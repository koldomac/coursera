//
//  FourthVC.swift
//  pizza
//
//  Created by KoldoMac on 13/12/15.
//  Copyright © 2015 KoldoMac. All rights reserved.
//

import UIKit

class FourthVC: UIViewController {

    var dic: [String:String] = [:]
    var dicIngredientes: [String:String] = [:]
    
    var dic2: [String:String] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Ingredientes"
    }
    
    override func viewWillAppear(animated: Bool) {
        if (dic2.count == 3) {
            dic.updateValue(dic2["tamaño"]!, forKey: "tamaño")
            dic.updateValue(dic2["masa"]!, forKey: "masa")
            dic.updateValue(dic2["queso"]!, forKey: "queso")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! ConfirmVC
        sigVista.dic = dic
        sigVista.dicIngredientes = dicIngredientes;
    }
    
    @IBAction func swJamon(sender: UISwitch) {
        if (sender.on) {
            dicIngredientes.updateValue("Jamón", forKey: "jamon")
        } else {
            dicIngredientes.removeValueForKey("jamon")
        }
    }
    @IBAction func swAceituna(sender: UISwitch) {
        if (sender.on) {
            dicIngredientes.updateValue("Aceituna", forKey: "aceituna")
        } else {
            dicIngredientes.removeValueForKey("aceituna")
        }
    }
    @IBAction func swPepperoni(sender: UISwitch) {
        if (sender.on) {
            dicIngredientes.updateValue("Peperoni", forKey: "peperoni")
        } else {
            dicIngredientes.removeValueForKey("peperoni")
        }
    }
    @IBAction func swCebolla(sender: UISwitch) {
        if (sender.on) {
            dicIngredientes.updateValue("Cebolla", forKey: "cebolla")
        } else {
            dicIngredientes.removeValueForKey("cebolla")
        }
    }
    @IBAction func swPavo(sender: UISwitch) {
        if (sender.on) {
            dicIngredientes.updateValue("Pavo", forKey: "pavo")
        } else {
            dicIngredientes.removeValueForKey("pavo")
        }
    }
    @IBAction func swPimiento(sender: UISwitch) {
        if (sender.on) {
            dicIngredientes.updateValue("Pimiento", forKey: "pimiento")
        } else {
            dicIngredientes.removeValueForKey("pimiento")
        }
    }
    @IBAction func swSalchicha(sender: UISwitch) {
        if (sender.on) {
            dicIngredientes.updateValue("Salchicha", forKey: "salchicha")
        } else {
            dicIngredientes.removeValueForKey("salchicha")
        }
    }
    @IBAction func swAnchoa(sender: UISwitch) {
        if (sender.on) {
            dicIngredientes.updateValue("Anchoa", forKey: "anchoa")
        } else {
            dicIngredientes.removeValueForKey("anchoa")
        }
    }
    @IBAction func swBacon(sender: UISwitch) {
        if (sender.on) {
            dicIngredientes.updateValue("Bacon", forKey: "bacon")
        } else {
            dicIngredientes.removeValueForKey("bacon")
        }
    }
    @IBAction func swPiña(sender: UISwitch) {
        if (sender.on) {
            dicIngredientes.updateValue("Piña", forKey: "piña")
        } else {
            dicIngredientes.removeValueForKey("piña")
        }
    }
}
