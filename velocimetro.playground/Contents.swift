//: Velocímetro

import UIKit

enum Velocidades : Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velicidadInicial : Velocidades) {
        self = velicidadInicial
    }
}

class Auto {
    var velocidad : Velocidades

    init () {
        self.velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad (velocidad:Velocidades)->(velocidadActual:Velocidades, velocidadEnCadena:String) {
 
        var leyenda : String
        
        switch velocidad {
            case .Apagado:
                self.velocidad =  Velocidades.VelocidadBaja
                leyenda = "Velocidad baja"
            case .VelocidadBaja:
                self.velocidad = Velocidades.VelocidadMedia
                leyenda = "Velocidad media"
            case .VelocidadMedia:
                self.velocidad = Velocidades.VelocidadAlta
                leyenda = "Velocidad alta"
            case .VelocidadAlta:
                self.velocidad = Velocidades.VelocidadMedia
                leyenda = "Velocidad media"
        }
        return (self.velocidad, leyenda)
    }
}

var auto = Auto ()

for var index = 0; index < 20; index++ {

    let calculo = auto.cambioDeVelocidad(auto.velocidad)
    print("\(calculo.velocidadActual.rawValue) " + calculo.velocidadEnCadena)
    
}
