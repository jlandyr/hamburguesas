//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades )
    {
        self = velocidadInicial
    }

}

class Auto {
    
    var velocidad : Velocidades
    
    init()
    {
        self.velocidad = .Apagado
    }
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String)
    {
        var velocidadActual : Int
        
        var velocidadEnCadena : String
        
        switch velocidad {
        case .Apagado:
            velocidadEnCadena = "Apagado"
            velocidadActual = velocidad.rawValue
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidadActual = velocidad.rawValue
            velocidad = .VelocidadMedia
            velocidadEnCadena = "Velocidad Baja"
        case .VelocidadMedia:
            velocidadActual = velocidad.rawValue
            velocidad = .VelocidadAlta
            velocidadEnCadena = "Velocidad Media"
        case .VelocidadAlta:
            velocidadEnCadena = "Velocidad Alta"
            velocidadActual = velocidad.rawValue
            velocidad = .VelocidadMedia
        }
        
        return (velocidadActual, velocidadEnCadena)

    }
}

var auto = Auto()

for i in 1...20{
    print(auto.cambioDeVelocidad())
}

let color = UIColor(red: 120/255, green: 180/255, blue: 40/255, alpha: 1)
arc4random() % 100

















