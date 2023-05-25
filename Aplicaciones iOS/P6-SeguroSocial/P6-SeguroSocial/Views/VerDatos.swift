//
//  VerDatos.swift
//  P6-SeguroSocial
//
//  Created by Admin on 03/05/23.
//

import UIKit
import SafariServices

class VerDatos: UIViewController, UITabBarControllerDelegate {
    @IBOutlet weak var lblResultado: UILabel!
    
    let webURL = "https://www.gob.mx/salud"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tc = self.tabBarController {
            tc.delegate = self
        }
        cargarDatos()
    }
    
    func cargarDatos() {
        if let nombre = UserDefaults.standard.value(forKey: "udNombre") as? String,
           let peso = UserDefaults.standard.value(forKey: "udPeso") as? String,
           let tipoSangre = UserDefaults.standard.value(forKey: "udTipoSangre") as? String {
            lblResultado.text = "Nombre: \(nombre)\nPeso: \(peso)kgs\nTipo sangre: \(tipoSangre)"
        } else {
            lblResultado.text = "Ningun valor registrado"
        }
    }
    
    @IBAction func refrescarDatos(_ sender: Any) {
        cargarDatos()
    }
    
    @IBAction func irASecretariaSalud(_ sender: Any) {
        let safari = SFSafariViewController(url: URL(string: webURL)!)
        present(safari, animated: true)
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        cargarDatos()
    }
}
