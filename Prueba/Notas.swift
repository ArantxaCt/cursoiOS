//
//  Notas.swift
//  Prueba
//
//  Created by Arantxa Emanth Cuellar Torres on 24/08/22.
//

import Foundation
import UIKit

class Notas: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var variable: Int = 3//declara variable cambia el valor, i es un entero
        var variable1 = 0 //se infiere el tipo de valor
        let v1 = 5//declara constante no cambia el valor
        
        var varEntero: Int
        let varFloat: Float = 1.5//pocos decimales
        let varDouble: Double //muchos decimales
        varEntero = 2
        let letBoolean: Bool = true
        let letString: String = "prueba"
        var someTuple = (top: 10, bottom: 12)
        someTuple = (top: 4, bottom: 42)
        someTuple = (9, 99)
        //someTuple = (left: 4, right: 42) //error por diferencia de nombres en las variables
        let letOptional: Int? //puede o no tener valor
        let someArray: Array<String> = ["Alex", "Brian", "Dave"]
        let someArrayActual: [String] = ["Alex", "Brian", "Dave"]
        let someArray2 = [String]() //arreglo vacio para que posteriormente será llenado
        let someDictionary: [String: Int] = ["Alex": 31, "Paul": 39] //tipos de datos que se van a utilizar
        print(someDictionary["Alex"]) //imprimirá Optional(31)
        print("Hola estoy concatenando \(letString)", letBoolean)
        print(variable + v1)
        print(Float(v1) + varFloat)
        var red, blue, green: Double //varias variables del mismo tipo
        
        var optInteger: Int?
        optInteger = 1
        print("opcional: ", optInteger) //imprime opcional: Optional(1)
        
        //unwrap -> sacar valor del opcional, no es una palabraa reservada pero es el termino adecuado para referirse a quital el Optional para solo tener el valor
        
        //force unwrap se define con una admiración !
        //desenpaquetado seguro del optional -> if let -> guard let
        
        var color = semaforo(name: "azul")
        
        if let unwrappedClor = color {
            print("Exito ", unwrappedClor)
        } else {
            print("error ")
        }
        
        guard let otroColor = color else { return }
        
        let i = 0
        for i in i ... 10 {
            print(i)
        } //toca 1 y 10
        
        for i in i ..< 10 {
            print(i)
        } //toca 1 y hasta 9
        
        if color == "verde" {
            print("es color: \(color)")
        }
        
        let age = 15
        switch age {
        case 0, 1, 2:
            print("tas chiquito")
        case 2 ... 10:
            print("tas mediano")
        case 11 ..< 15:
            print("tas grande")
        default:
            print("tas muy grande xddd")
        }
        
        var someInts = [Int]()
        someInts.append(20)
        someInts.append(30)
        someInts += [40]
        
        var someVar = someInts[0]
        print("Value of first element is \(someVar)")
        print("Value of second element is \(someInts[1])")
        
        var someStr = [String]()
        someStr.append("Apple")
        someStr.append("Amazon")
        someStr.append("Google")
        
        for item in someStr {
            print(item)
        }
        //como puedo imprimir el index? INVESTIGAR
        
        var dictionaryString: [String: String] = ["nombre": "luis", "apellido": "yañez"]
        print("Valor de nombre es: \(dictionaryString["nombre"])")
        //Any significa cualquiera [String: Any]
        
        let cadena = "1"
        var numero: Int
        numero = cadena as? Int ?? 2// as? -> si puedes haz el cast, sino no lo hagas
        //?? -> si esto falla, has esto siguiente
        
        greet(person: "Jose Luis")
    }
    
    func semaforo(name: String) -> String? {
        if name == "rojo" { return "rojo" }
        if name == "amarillo" { return "amarillo" }
        if name == "verde" { return "verde" }
        
        return nil
    }
    
    func greet(person: String) -> String {
        let greeting = "Hello, " + person + "!"
        return greeting
    }
    
    func greet1(persona vvperson: Int) -> String {
        let vvperson = 1
        return "si"
    }

}
