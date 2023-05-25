//
//  ViewController.swift
//  P5-PersistenciaDatos
//
//  Created by Admin on 02/05/23.
//

import UIKit
import WebKit
import SafariServices

class ViewController: UIViewController {
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtApellido: UITextField!
    @IBOutlet weak var btnConsultar: UIButton!
    @IBOutlet weak var btnGuardar: UIButton!
    @IBOutlet weak var btnEliminar: UIButton!
    @IBOutlet weak var wkvNavegador: WKWebView!
    let webURL = "https://www.apple.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func getNombre() -> String {
        return txtNombre.text ?? ""
    }
    
    func getApellido() -> String {
        return txtApellido.text ?? ""
    }
    @IBAction func consultar(_ sender: Any) {
        if let nombre = UserDefaults.standard.value(forKey: "udNombre") as? String,
           let apellido = UserDefaults.standard.value(forKey: "udApellido") as? String {
            txtNombre.text = nombre
            txtApellido.text = apellido
        } else {
            mostrarAlerta("No hay elementos aun")
        }
    }
    
    @IBAction func guardar(_ sender: Any) {
        if(getNombre() != "" && getApellido() != "") {
            UserDefaults.standard.set(getNombre(), forKey: "udNombre")
            UserDefaults.standard.set(getApellido(), forKey: "udApellido")
            
            mostrarAlerta("Datos guardados")
        } else {
            mostrarAlerta("Los datos no pueden estar vacios")
        }
    }
    
    @IBAction func eliminar(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "udNombre")
        UserDefaults.standard.removeObject(forKey: "udApellido")
        
        mostrarAlerta("Defaults eliminados")
    }
    
    func mostrarAlerta(_ texto: String) {
        let alerta = UIAlertController(title: "Atencion", message: texto, preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: "OK", style: .default))
        present(alerta, animated: true)
    }
    
    @IBAction func consultarWeb(_ sender: Any) {
        wkvNavegador.load(URLRequest(url: URL(string: webURL)!))
    }
    
    @IBAction func abrirWeb(_ sender: Any) {
        let safari = SFSafariViewController(url: URL(string: webURL)!)
        present(safari, animated: true)
    }
}

