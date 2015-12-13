//
//  SecondVC.swift
//  pizza
//
//  Created by KoldoMac on 8/12/15.
//  Copyright © 2015 KoldoMac. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    var dic: [String:String] = [:]
    var dic1: [String:String] = [:]
    
    @IBOutlet var swDel: UISwitch!
    @IBOutlet var swCru: UISwitch!
    @IBOutlet var swGru: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Masa"
    }

    override func viewWillAppear(animated: Bool) {
        if (dic1.count == 1) {
            dic.updateValue(dic1["tamaño"]!, forKey: "tamaño")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! ThirdVC
        sigVista.dic2 = dic
    }
    
    // MARK: Functions os USwitches
    @IBAction func swDel_Changed(sender: AnyObject) {
        if (swDel.on) {
            swGru.setOn(false, animated: true)
            swCru.setOn(false, animated: true)
            dic.updateValue("Delgada", forKey: "masa")
        }
    }
    @IBAction func swCru_Changed(sender: AnyObject) {
        if (swCru.on) {
            swGru.setOn(false, animated: true)
            swDel.setOn(false, animated: true)
            dic.updateValue("Crujiente", forKey: "masa")
        }
    }
    @IBAction func swGru_Changed(sender: AnyObject) {
        if (swGru.on) {
            swCru.setOn(false, animated: true)
            swDel.setOn(false, animated: true)
            dic.updateValue("Gruesa", forKey: "masa")
        }
    }
}
