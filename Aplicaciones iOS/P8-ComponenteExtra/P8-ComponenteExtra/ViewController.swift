//
//  ViewController.swift
//  P8-ComponenteExtra
//
//  Created by Admin on 31/12/79.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {
    var element = ""
    var lista = ["Elemento1", "Elemento2", "Elemento3", "Elemento4", "Elemento5", "Elemento6", "Elemento7", "Elemento8", "Elemento9"]
    @IBOutlet weak var pkvPrueba: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pkvPrueba.dataSource = self
        pkvPrueba.delegate = self
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return lista.count
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return lista[row]
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            element = lista[row]
        }
}

