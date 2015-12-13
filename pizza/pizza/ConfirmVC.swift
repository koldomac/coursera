//
//  ConfirmVC.swift
//  pizza
//
//  Created by KoldoMac on 13/12/15.
//  Copyright © 2015 KoldoMac. All rights reserved.
//

import UIKit

class ConfirmVC: UIViewController {

    var dic: [String:String] = [:]
    var dicIngredientes: [String:String] = [:]
    
    @IBOutlet var lblResultado: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Confirmar"
    }
    
    override func viewWillAppear(animated: Bool) {
        
        var pizza = ""
        
        if ((dic["tamaño"]) != nil) {
            pizza += "Tamaño:" + "\t" + dic["tamaño"]! + "\r"
        }
        if ((dic["masa"]) != nil) {
            pizza += "Masa:" + "\t\t" + dic["masa"]! + "\r"
        }
        if ((dic["queso"]) != nil) {
            pizza += "Queso:" + "\t" + dic["queso"]! + "\r"
        }
        
        if (dicIngredientes.count > 0) {
            pizza += "Ingredientes:" + "\r"
            for clave in dicIngredientes.values {
                pizza +=  " - " + clave + "\r"
            }
        }
        
        if (pizza .isEmpty) {
            pizza += "Faltan opciones por seleccionar." + "\r" + "Revise su pizza por favor."
        }
        
        lblResultado.text = pizza
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func confirmar(sender: AnyObject) {
        var bConfirmar : Bool = false
        
        if (dicIngredientes.count > 0) {
            bConfirmar = true;
        }
        if ((dic["tamaño"]) == nil) {
            bConfirmar = false;
        }
        if ((dic["masa"]) == nil) {
            bConfirmar = false;
        }
        if ((dic["queso"]) == nil) {
            bConfirmar = false;
        }
        
        var titulo : String
        var mensaje : String
        if (bConfirmar == true) {
            titulo = "Pizza Confirmada"
            mensaje = "Mandamos su pizza a la cocina."
        } else {
            titulo = "Pizza sin confirmar"
            mensaje = "Faltan opciones por seleccionar, revise su pizza por favor."
        }
        
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: .Alert)
        let OKAction = UIAlertAction (title: "Ok", style: .Default) { (action) -> Void in
        }
        alert.addAction(OKAction)
        self.presentViewController(alert, animated: true) {
        }
    }
}
