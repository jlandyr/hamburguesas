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
    
    var velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    
    init()
    {
        self.velocidad = Velocidades.Apagado
    }
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String)
    {
        if self.velocidad == Velocidades.Apagado {
            
//            return (Velocidades.Apagado.rawValue, "Apagado")
            return (Velocidades.VelocidadBaja.rawValue, "Velocidad Baja")
        }
        else if self.velocidad == Velocidades.VelocidadBaja
        {
//            return (Velocidades.VelocidadBaja.rawValue, "Velocidad Baja")
            return (Velocidades.VelocidadMedia.rawValue, "Velocidad Media")
        }
        else if self.velocidad == Velocidades.VelocidadMedia
        {
            return (Velocidades.VelocidadAlta.rawValue, "Velocidad Alta")
//            return (Velocidades.VelocidadMedia.rawValue, "Velocidad Media")
        }
        else if self.velocidad == Velocidades.VelocidadAlta
        {
            return (Velocidades.VelocidadMedia.rawValue, "Velocidad Media")            
//            return (Velocidades.VelocidadAlta.rawValue, "Velocidad Alta")
        }
        return (0, "nada")
    }
}

var auto = Auto()

for var i in 0...120
{
    
    switch i{
    case 0:
        auto.velocidad = Velocidades.Apagado
        break
    case 20:
        auto.velocidad = Velocidades.VelocidadBaja
        break
    case 50:
        auto.velocidad = Velocidades.VelocidadMedia
        break
    case 120:
        auto.velocidad = Velocidades.VelocidadAlta
        break
    default: break
    }
    print(auto.cambioDeVelocidad())
}
