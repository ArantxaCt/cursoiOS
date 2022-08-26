//
//  EjerciciosViewController.swift
//  Prueba
//
//  Created by Arantxa Emanth Cuellar Torres on 24/08/22.
//

import UIKit

class EjerciciosViewController: UIViewController {

    @IBOutlet weak var insertaFraseTextField: UITextField!
    @IBOutlet weak var mensajeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Ejercicio 1
        print(make_sum(x: 2, y: 5.0))
        
        //Ejercicio 2
        let array: [Int] = [6, 7, 2, 18, 7, 0, 4, 7]
        let array2: [Int] = [1, 4, 2, 7, 9, 10, 7]
        
        let i: Int = 0
        var contador = 0
        var contador2 = 0
        
        for i in i ... array.count - 1 {
            if array[i] == 7 {
                contador = contador + 1
            }
        }
        
        for i in i ... array2.count - 1 {
            if array[i] == 7 {
                contador2 = contador2 + 1
            }
        }
        
        print("Cantidad de 7's en el array: \(contador)")
        print("Cantidad de 7's en el array2: \(contador2)")
        
        //Ejercicio 3
        print(repeatArray(array3: [1, 1, 2, 2, 3]))
        
        //Ejercicio 4
        print("Array suma 1: \(sumaArray(array4: [1, 2, 5, 3]))")
        print("Array suma 2: \(sumaArray(array4: [9]))")
        print("Array suma 3: \(sumaArray(array4: []))")
        
        //Ejecricio 5
        print("Número mayor: \(arrayMayor(array5: [10, 5, 0, 50]))")
        

    }
    
    @IBAction func procesaButton(_ sender: Any) {
        //Ejercicio 6
        
        if let frase = insertaFraseTextField.text, frase.isEmpty {
            mensajeLabel.text = "Favor de ingresar una frase"
            mensajeLabel.textColor = UIColor.systemYellow
        } else {
            let fraseWithoutSpaces = insertaFraseTextField.text?.replacingOccurrences(of: " ", with: "").lowercased()
            
            if (fraseWithoutSpaces == String(fraseWithoutSpaces!.reversed())) {
                mensajeLabel.text = "Si es palíndromo"
                mensajeLabel.textColor = UIColor.systemGreen
            } else {
                mensajeLabel.text = "No es palíndromo"
                mensajeLabel.textColor = UIColor.systemRed
            }
        }
    }
    
    //Ejercicio 1 func
    func make_sum(x: Int, y: Float) -> Float {
        return Float(x) + y
    }
    
    //Ejercicio 3 func
    func repeatArray(array3: [Int]) -> Bool {
        let i: Int = 0
        var contador3 = 0
        var valor: Bool = false
        
        for i in i ..< array3.count - 1 {
            if array3[i] == array3[i+1] {
                contador3 = contador3 + 1
            }
        }
        
        if contador3 >= 3 {
            valor = true
            return valor
        } else {
            valor = false
            return valor
        }
        
        return valor
    }
    
    //Ejercicio 4 func
    func sumaArray(array4: [Int]) -> Int {
        var valor = 0
        
        if array4.count == 1 {
            valor = array4[0]
        } else if array4.count >= 2 {
            valor = array4[0] + array4[1]
        } else if array4.count == 0 {
            valor = 0
        }
        
        return valor
    }
    
    //Ejercicio 5
    func arrayMayor(array5: [Int]) -> Int {
        let i: Int = 0
        var valor = 0
        var contador4 = 0
        var aux: Int = 0

        print("\(array5)")
        for i in i ..< array5.count - 1 {
            
            if aux < array5[i]{
                aux = array5[0]
                if aux > array5[i + 1] {
                    aux = array5[i]
                } else {
                    aux = array5[i+1]
                }
            } else {
                if aux > array5[i + 1] {
                    aux = contador4
                } else {
                    aux = array5[i+1]
                }
            }

            contador4 = aux
            
        }
        
        return contador4
    }
}
