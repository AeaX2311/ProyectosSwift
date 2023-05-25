//
//  ViewController.swift
//  ExamenU2
//
//  Created by Admin on 20/04/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var pkvListadoAutos: UIPickerView!
    @IBOutlet weak var sgcEnganche: UISegmentedControl!
    @IBOutlet weak var lblEnganche: UILabel!
    @IBOutlet weak var lblPlazo: UILabel!
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var sldPlazo: UISlider!
    
    var todosAutos = [Auto(nombre: "Compacto", costo: 500000), Auto(nombre: "Familiar", costo: 700000), Auto(nombre: "Deportivo", costo: 950000)]
    var cotizacion :Cotizacion = Cotizacion(auto: Auto(nombre: "Compacto", costo: 500000), montoEnganche: 20, plazo: 12)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pkvListadoAutos.dataSource = self
        pkvListadoAutos.delegate = self
        setearDatos()
    }

    private func setearDatos() {
        lblPlazo.text = "Plazo: " + String(cotizacion.plazo)
        lblEnganche.text = "Enganche: " + String(cotizacion.obtenerMontoEnganche())
        lblResultado.text = "Mensualidad estimada: \(cotizacion.calcularPagoMensual())"
    }
    
    
    func calcularPlazoo() {
        let n = Int(sldPlazo.value)
        var roundedValue = 12
        
        if n < 24 {
            roundedValue = 12
        } else if n < 36 {
            roundedValue = 24
        } else if n < 48 {
            roundedValue = 36
        } else if n < 60 {
            roundedValue = 48
        } else if n < 72 {
            roundedValue = 60
        } else {
            roundedValue = 72
        }
        
        cotizacion.plazo = roundedValue
    }
    
    @IBAction func onPlazoChange(_ sender: Any) {
        calcularPlazoo()
        setearDatos()
    }
    
    @IBAction func onSelectEnganche(_ sender: UISegmentedControl) {
        switch(sender.selectedSegmentIndex) {
        case 0:
            cotizacion.montoEnganche = 20
        case 1:
            cotizacion.montoEnganche = 30
        case 2:
            cotizacion.montoEnganche = 40
        case 3:
            cotizacion.montoEnganche = 50
        default:
            cotizacion.montoEnganche = 20
        }
        
        setearDatos()
    }
    

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return todosAutos.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return todosAutos[row].toString()
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        cotizacion.auto = todosAutos[row]
        setearDatos()
    }
}

