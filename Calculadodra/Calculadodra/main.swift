//
//  main.swift
//  Calculadodra
//
//  Created by Jorge on 10/10/23.
//

import Foundation

var ciclo : String = ""

var numero1 : Double = 0
var numero2 : Double = 0

func suma(n1: Double,n2: Double){
    let resultado = n1 + n2
    print("El resultado de la suma es: \(resultado)")
}

func resta(n1: Double,n2: Double){
    let resultado = n1 - n2
    print("El resultado de la resta es: \(resultado)")
}

func multiplicacion(n1: Double,n2: Double){
    let resultado = n1 * n2
    print("El resultado de la multiplicacion es: \(resultado)")
}

func division(n1: Double,n2: Double){
    var resultado : Double = 0
    if n2 == 0 {
        print("La division no se puede realizar")
    }else {
        resultado = n1 / n2
        print("El resultado de la division es: \(resultado)")
    }
}

while ciclo != "Salir" {
    print("Ingrese opcion deseada")
    print("Suma")
    print("Resta")
    print("Multiplicacion")
    print("Division")
    print("Salir")
    ciclo = readLine() ?? "Salir"
    print("Ingrese un numero: ")
    numero1 = Double(readLine() ?? "0") ?? 0
    print("Ingrese otro numero: ")
    numero2 = Double(readLine() ?? "0") ?? 0
    switch ciclo {
    case "Suma":
        suma(n1: numero1, n2: numero2)
    case "Resta":
        resta(n1: numero1, n2: numero2)
    case "Multiplicacion":
        multiplicacion(n1: numero1, n2: numero2)
    case "Division":
        division(n1: numero1, n2: numero2)
    case "Salir":
        break
    default:
        print("Algo Salio Mal")
    }
}
