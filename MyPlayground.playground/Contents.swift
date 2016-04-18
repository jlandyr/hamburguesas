//: Playground - noun: a place where people can play

import UIKit

let rango = 0...100
for i in rango{
    let divisible5 = i % 5
    if divisible5 == 0
    {
        print("# \(i) Bingo!!!")
    }
    
    let par = i % 2
    if par == 0
    {
        print("# \(i) par!!!")
    }
    else
    {
        print("# \(i) impar!!!")
    }
    
    if i >= 30 && i<=40
    {
        print("# \(i) Viva Swift!!!")
    }
}

let variableOpcional : Int? = 90

if variableOpcional != nil {
    
    print("El valor es: \(variableOpcional!)")
    
}else{
    print("El valor es: nil")
}











