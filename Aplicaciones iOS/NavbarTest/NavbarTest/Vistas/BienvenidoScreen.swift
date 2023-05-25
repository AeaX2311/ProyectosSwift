//
//  BienvenidoScreen.swift
//  NavbarTest
//
//  Created by Admin on 26/04/23.
//

import UIKit

class BienvenidoScreen: UIViewController {
    @IBOutlet weak var txtNombre: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "InicioIdentifier" {
            let vistaInicio = segue.destination as! InicioScreen
            vistaInicio.nombre = getName()
        }
    }
    
    func getName() -> String {
        return txtNombre.text ?? ""
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let realizarSegue = getName() != "" && getName().count > 2 || identifier == "InfoIdentifier"
        if identifier == "InicioIdentifier" && !realizarSegue {
            let alerta = UIAlertController(title: "Advertencia", message: "Debe de ingresar un nombre de mas de tres caracteres.", preferredStyle: .alert)
            alerta.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alerta, animated: true)
        }
        
        return realizarSegue
    }
}
