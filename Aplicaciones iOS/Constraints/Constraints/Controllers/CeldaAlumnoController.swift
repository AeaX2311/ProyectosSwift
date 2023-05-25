//
//  CeldaAlumnoController.swift
//  Constraints
//
//  Created by Admin on 31/12/79.
//

import UIKit

class CeldaAlumnoController: UITableViewCell {
    
    @IBOutlet weak var imgFotoPerfil: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblPromedio: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func asignarAlumno(alumno: Alumno) {
        imgFotoPerfil.image = alumno.fotoPerfil
        lblNombre.text = alumno.nombre
        lblPromedio.text = String(alumno.promedio)
    }
}
