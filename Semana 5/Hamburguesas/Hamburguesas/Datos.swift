//
//  Datos.swift
//  Hamburguesas
//
//  Created by Pedro Jose on 20/4/16.
//  Copyright © 2016 eureka. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDeHamburguesa
{
    let fotosHamburguesas = ["Atun","Avestruz","Cangrejo","Chocolate","Cocodrilo","Espinaca","Garbanzos","Lentejas","Pavo","Pescado","Pollo","Salmon","Soya","Thermonix","Tofu","Vegetal","Verduras","Zanahoria","Frijol","Patata"]
    
    func obtenerHamburguesa() -> String {
        let posicion = Int(arc4random()) % fotosHamburguesas.count
        return fotosHamburguesas[posicion]
    }
}

class ColeccionDePaises {
    
    let paises = ["Alemania", "Austria", "Bélgica", "Colombia", "Canadá", "Dinamarca","EEUU", "Estonia", "Finlandia", "Francia", "Haití", "Hungría", "Indonesia", "Jamaica", "Noruega", "Perú", "Polonia", "Paraguay", "Rumania", "Suecia"]
    
    func obtenerPais( )->String
    {
        let posicion = Int(arc4random()) % paises.count
        return paises[posicion]
    }
}

struct ColeccionColores
{
    func getRandomColor() -> UIColor{
        
        let randomRed:CGFloat = CGFloat(drand48())
        
        let randomGreen:CGFloat = CGFloat(drand48())
        
        let randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }
}