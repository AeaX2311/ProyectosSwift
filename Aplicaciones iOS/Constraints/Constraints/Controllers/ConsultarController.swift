//
//  ConsultarController.swift
//  Constraints
//
//  Created by Admin on 31/12/79.
//

import UIKit

class ConsultarController: UIViewController {

    @IBOutlet weak var imvFoto: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblPromedio: UILabel!
    var selectedAlumno: Alumno?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cargarDatos()
    }
    
    func cargarDatos() {
        if selectedAlumno == nil {
            return
        }
        
        imvFoto.image = selectedAlumno?.fotoPerfil
        lblNombre.text = selectedAlumno?.nombre
        lblPromedio.text = String(selectedAlumno?.promedio ?? 0)
    }
}
