//
//  ViewController.swift
//  pizza
//
//  Created by KoldoMac on 8/12/15.
//  Copyright © 2015 KoldoMac. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {

    var dic: [String:String] = [:]
    
    @IBOutlet var swPeq: UISwitch!
    @IBOutlet var swMed: UISwitch!
    @IBOutlet var swGra: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tamaño"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! SecondVC
        sigVista.dic1 = dic
    }
    
    // MARK: Functions os USwitches
    @IBAction func swPeq_Changed(sender: AnyObject) {
        if (swPeq.on) {
            swMed.setOn(false, animated: true)
            swGra.setOn(false, animated: true)
            dic.updateValue("Pequeña", forKey: "tamaño")
        }
    }
    @IBAction func swMed_Changed(sender: AnyObject) {
        if (swMed.on) {
            swPeq.setOn(false, animated: true)
            swGra.setOn(false, animated: true)
            dic.updateValue("Mediana", forKey: "tamaño")
        }
    }
    @IBAction func swGra_Changed(sender: AnyObject) {
        if (swGra.on) {
            swPeq.setOn(false, animated: true)
            swMed.setOn(false, animated: true)
            dic.updateValue("Grande", forKey: "tamaño")
        }
    }    
}

