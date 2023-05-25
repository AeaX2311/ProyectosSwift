//
//  InicioScreen.swift
//  NavbarTest
//
//  Created by Admin on 26/04/23.
//

import UIKit

class InicioScreen: UIViewController {

    @IBOutlet weak var lblNombre: UILabel!
    var nombre = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblNombre.text = "Hola \(nombre)"
    }
}
