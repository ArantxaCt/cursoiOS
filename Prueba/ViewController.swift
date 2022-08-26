//
//  ViewController.swift
//  Prueba
//
//  Created by Arantxa Emanth Cuellar Torres on 22/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombreTextField: UITextField!
    @IBOutlet weak var correoTextField: UITextField!
    @IBOutlet weak var contrasenaTextField: UITextField!
    @IBOutlet weak var confirmaContrasenaTextField: UITextField!
    @IBOutlet weak var mensajeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func motrarContrasenasButton(_ sender: Any) {
        if contrasenaTextField.isSecureTextEntry && confirmaContrasenaTextField.isSecureTextEntry {
            contrasenaTextField.isSecureTextEntry = false
            confirmaContrasenaTextField.isSecureTextEntry = false
        } else {
            contrasenaTextField.isSecureTextEntry = true
            confirmaContrasenaTextField.isSecureTextEntry = true
        }
    }
    @IBAction func registrarButton(_ sender: Any) {
        if let nombre = nombreTextField.text, nombre.isEmpty {
            alertWithTitle(title: "Error", message: "Nombre vacío", ViewController: self)
            return
        }
        
        if !validEmail() {
            alertWithTitle(title: "Error", message: "Email no válido o vacío", ViewController: self)
            return
        }
        
        if let contrasena = contrasenaTextField.text, contrasena.isEmpty {
            alertWithTitle(title: "Error", message: "Contraseña vacía", ViewController: self)
            return
        }
        
        if contrasenaTextField.text == confirmaContrasenaTextField.text {
            mensajeLabel.text = "Si son iguales"
            mensajeLabel.textColor = UIColor.systemGreen
            return
        } else {
            mensajeLabel.text = "No coinciden"
            mensajeLabel.textColor = UIColor.red
            return
        }
    }
    
    func validEmail() -> Bool {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            guard let email = self.correoTextField.text?.replacingOccurrences(of: " ", with: ""), !email.isEmpty, emailTest.evaluate(with: email) else {
                self.becomeFirstResponder()
                if !(self.correoTextField.text?.isEmpty ?? true) {
                    debugPrint("Campo vacio")
                }
                return false
            }
            return true
    }
    
    func alertWithTitle(title: String!, message: String, ViewController: UIViewController) {
         let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
         alert.addAction(action)
        ViewController.present(alert, animated: true, completion: nil)
     }
    
}

