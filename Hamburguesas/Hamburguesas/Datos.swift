//
//  Datos.swift
//  Hamburguesas
//
//  Created by KoldoMac on 3/1/16.
//  Copyright © 2016 KoldoMac. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises {
    
    var paises : [String] = ["España", "México", "Ecuador", "Argentina", "Portugal", "Suiza", "Francia", "Italia", "Brasil", "Venezuela", "Chile", "Bolivia", "Paraguai", "EEUU", "Canadá", "China", "Japón", "Australia", "Vietnam", "India"]
    
    func obtenPais()->String {
        let posicion = Int(arc4random()) % paises.count
        return paises[posicion]
    }
}

class ColeccionDeHamburguesas {
    
    var hamburguesas : [String] = ["Raza Nostra", "Ternera", "Deportista", "de Pueblo", "Barbacoa", "Bacón", "Ibérica", "Ranchera", "a la Antigua", "Roquefort", "Cebolla pochada", "4 Quesos", "Setas", "Trufas", "Wagyu", "Ternera blanca", "Juan Pozuelo", "al Oporto", "Foie", "Valles Esla"]
    
    func obtenHamburguesa()->String {
        let posicion = Int(arc4random()) % hamburguesas.count
        return hamburguesas[posicion]
    }
}

struct Colores {
    let colores = [
        UIColor (red: 1/255, green: 1/255, blue: 1/255, alpha: 0.8),
        UIColor (red: 255/255, green: 10/255, blue: 10/255, alpha: 0.8),
        UIColor (red: 20/255, green: 255/255, blue: 20/255, alpha: 0.8),
        UIColor (red: 30/255, green: 30/255, blue: 255/255, alpha: 0.8),
        UIColor (red: 240/255, green: 240/255, blue: 240/255, alpha: 0.3)
    ]
    
    func obtenColor() ->UIColor {
        let posicion = Int(arc4random()) % colores.count
        return colores[posicion]
    }
}