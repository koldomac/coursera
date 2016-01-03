//
//  ViewController.swift
//  Hamburguesas
//
//  Created by KoldoMac on 3/1/16.
//  Copyright © 2016 KoldoMac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblPais: UILabel!
    @IBOutlet var lblHamburguesa: UILabel!
    
    var paises = ColeccionDePaises()
    var hamburguesas = ColeccionDeHamburguesas()
    var colores = Colores()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblPais.text = ""
        lblHamburguesa.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func btnHamburguesa_Tap(sender: AnyObject) {
        lblPais.text = paises.obtenPais()
        lblHamburguesa.text = hamburguesas.obtenHamburguesa()
        self.view.backgroundColor = colores.obtenColor()
    }
}

