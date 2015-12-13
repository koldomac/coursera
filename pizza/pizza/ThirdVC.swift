//
//  ThirdVC.swift
//  pizza
//
//  Created by KoldoMac on 13/12/15.
//  Copyright © 2015 KoldoMac. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {

    var dic: [String:String] = [:]
    var dic2: [String:String] = [:]
    
    @IBOutlet var swMoz: UISwitch!
    @IBOutlet var swChe: UISwitch!
    @IBOutlet var swPar: UISwitch!
    @IBOutlet var swSin: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Queso"
    }
    
    override func viewWillAppear(animated: Bool) {
        if (dic2.count == 2) {
            dic.updateValue(dic2["tamaño"]!, forKey: "tamaño")
            dic.updateValue(dic2["masa"]!, forKey: "masa")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! FourthVC
        sigVista.dic2 = dic
    }

    @IBAction func swMoz_Changed(sender: AnyObject) {
        if (swMoz.on) {
            swChe.setOn(false, animated: true)
            swPar.setOn(false, animated: true)
            swSin.setOn(false, animated: true)
            dic.updateValue("Mozzarela", forKey: "queso")
        }
    }
    @IBAction func swChe_Changed(sender: AnyObject) {
        if (swChe.on) {
            swMoz.setOn(false, animated: true)
            swPar.setOn(false, animated: true)
            swSin.setOn(false, animated: true)
            dic.updateValue("Chedar", forKey: "queso")
        }
    }
    @IBAction func swPar_Changed(sender: AnyObject) {
        if (swPar.on) {
            swChe.setOn(false, animated: true)
            swMoz.setOn(false, animated: true)
            swSin.setOn(false, animated: true)
            dic.updateValue("Parmesano", forKey: "queso")
        }
    }
    @IBAction func swSin_Changed(sender: AnyObject) {
        if (swSin.on) {
            swChe.setOn(false, animated: true)
            swPar.setOn(false, animated: true)
            swMoz.setOn(false, animated: true)
            dic.updateValue("Sin queso", forKey: "queso")
        }
    }
}
