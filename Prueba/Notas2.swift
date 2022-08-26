//
//  Notas2.swift
//  Prueba
//
//  Created by Arantxa Emanth Cuellar Torres on 25/08/22.
//

import UIKit

class Notas2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.metodoVariable() //podemos utilizar funciones que vengan vacias porque nosotros las podemos llenar por default
        
        print("---------------Inicia Clase----------------")
        
        let user1 = User1(name: "Arantxa", apellido: "Cuellar", email: "a@g.com")
        let user2 = User1(name: "Xochitl", apellido: "Torres", email: "x@g.com")
        var newUser1 = user1
        print(user1.name)
        print(newUser1.name)
        
        newUser1.name = "Miguel"
        print(user1.name)
        print(newUser1.name)
        
        var arrayUser = [User1]()
        
        arrayUser.append(user1)
        arrayUser.append(user2)
        
        print("----------------Array nombres---------------")
        
        for user in arrayUser {
            print(user.name)
        }
        
        print("----------------Fin Array nombres---------------")
        print("----------------Fin Clase---------------")
        print("---------------Inicia Struct----------------")
        
        let user = User(name: "Emanth", apellido: "Cuellar", email: "e@g.com")
        var newUser = user
        print(user.name)
        print(newUser.name)
        
        newUser.name = "José"
        print(user.name)
        print(newUser.name)
        
        print("---------------Fin Struct----------------")
        
        let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
        let halfGray = Color(white: 0.5)
        //let halfGray = Color() <- esto marcaría error porque no esta inicializado
        
        var score = 0 {
            didSet {
                print("esto se llama una vez que el valor de score cambia")
            }
            willSet {
                print("el valor de score va a cambiar")
            }
        }
        
        score = 1
        
        //viewDidLoad carga los elementos en memoria
        
    }
    
//*********ciclo de vida de un view controller**********
    //1
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    //2
//    se comenta porque ya esta definido
//    override func viewDidLoad() {
//        print("viewDidLoad")
//    }
    
    //3
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    //4
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
//*********fin ciclo de vida de un view controller**********
    
    func metodoVariable(varUno: String = "Hola") {
        print(varUno)
    }

}

struct User {
    var name: String
    var apellido: String
    var email: String
    
    init(name: String, apellido: String, email: String) { //init es como un constructor en java
        self.name = name
        self.apellido = apellido
        self.email = email
    }
}
//struct tipo valor (dato), hace una copia el los valores y trabaja de manera independiente
class User1 {
    var name: String
    var apellido: String
    var email: String
    
    init(name: String, apellido: String, email: String) { //init es como un constructor en java
        self.name = name
        self.apellido = apellido
        self.email = email
    }
}
//class tipo referencia se conserva el valor porque trabaja de manera dependiente y apuntan a la misma dirección de memoria

struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red   = red
        self.green = green
        self.blue  = blue
    }
    init(white: Double) {
        red   = white
        green = white
        blue  = white
    }
}
