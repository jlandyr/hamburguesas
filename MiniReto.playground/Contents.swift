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
    
    var velocidad = Velocidades.init(velocidadInicial: Velocidades.Apagado)
    
    init()
    {
        self.velocidad = Velocidades.Apagado
    }
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String)
    {
        if self.velocidad == Velocidades.Apagado {
            
            return (Velocidades.Apagado.rawValue, "Apagado")
        }
        else if self.velocidad == Velocidades.VelocidadBaja
        {
            return (Velocidades.VelocidadBaja.rawValue, "Velocidad Baja")
        }
        else if self.velocidad == Velocidades.VelocidadMedia
        {
            return (Velocidades.VelocidadMedia.rawValue, "Velocidad Media")
        }
        else if self.velocidad == Velocidades.VelocidadAlta
        {
            return (Velocidades.VelocidadAlta.rawValue, "Velocidad Alta")
        }
        return (0, "nada")
    }
}

var auto = Auto()
for var i=0; i<=120; i += 1
{
    auto.velocidad =
    auto.cambioDeVelocidad()
}
