//
//  CrearDatos.swift
//  P6-SeguroSocial
//
//  Created by Admin on 03/05/23.
//

import UIKit

class CrearDatos: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITabBarControllerDelegate {
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtPeso: UITextField!
    @IBOutlet weak var pkvTipoSangre: UIPickerView!
    
    var tiposSangre = ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"]
    var tipoSangreSelected = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pkvTipoSangre.dataSource = self
        pkvTipoSangre.delegate = self
        
        if let tc = self.tabBarController {
            tc.delegate = self
        }
    }
    
    func cargarDatos() {
        if let nombre = UserDefaults.standard.value(forKey: "udNombre") as? String,
           let peso = UserDefaults.standard.value(forKey: "udPeso") as? String,
           let tipoSangre = UserDefaults.standard.value(forKey: "udTipoSangre") as? String {
            txtNombre.text = nombre
            txtPeso.text = peso
            
            if let row = tiposSangre.firstIndex(of: tipoSangre) {
                pkvTipoSangre.selectRow(row, inComponent: 0, animated: false)
            }
        }
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        cargarDatos()
    }
    
    func getNombre() -> String {
        return txtNombre.text ?? ""
    }
    
    func getPeso() -> String {
        return txtPeso.text ?? ""
    }
    
    func getTipoSangre() -> String {
        return tipoSangreSelected
    }
    
    @IBAction func guardarDatos(_ sender: Any) {
        if(getNombre() != "" && getPeso() != "" && getTipoSangre() != "") {
            UserDefaults.standard.set(getNombre(), forKey: "udNombre")
            UserDefaults.standard.set(getPeso(), forKey: "udPeso")
            UserDefaults.standard.set(getTipoSangre(), forKey: "udTipoSangre")

            mostrarAlerta("Datos guardados")
        } else {
            mostrarAlerta("Los datos no pueden estar vacios")
        }
    }
    
    @IBAction func eliminarDatos(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "udNombre")
        UserDefaults.standard.removeObject(forKey: "udPeso")
        UserDefaults.standard.removeObject(forKey: "udTipoSangre")
        
        mostrarAlerta("Defaults eliminados")
        limpiar()
    }
    
    func mostrarAlerta(_ texto: String) {
        let alerta = UIAlertController(title: "Atencion", message: texto, preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: "OK", style: .default))
        present(alerta, animated: true)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tiposSangre.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tiposSangre[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tipoSangreSelected = tiposSangre[row]
    }
    
    func limpiar() {
        txtNombre.text = ""
        txtPeso.text = ""
        pkvTipoSangre.selectRow(0, inComponent: 0, animated: false)
    }
}
