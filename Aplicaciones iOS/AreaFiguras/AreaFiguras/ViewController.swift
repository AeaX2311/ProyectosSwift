//
//  ViewController.swift
//  AreaFiguras
//
//  Created by Admin on 29/03/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sgcFigura: UISegmentedControl!
    @IBOutlet weak var lblEtiqueta1: UILabel!
    @IBOutlet weak var lblEtiqueta2: UILabel!
    @IBOutlet weak var txtEntrada1: UITextField!
    @IBOutlet weak var txtEntrada2: UITextField!
    @IBOutlet weak var lblResultado: UILabel!
    var seleccion: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SeleccionarFigura(_ sender: UISegmentedControl) {
        
    }
    @IBAction func CalcularArea(_ sender: UIButton) {
        
    }
}

