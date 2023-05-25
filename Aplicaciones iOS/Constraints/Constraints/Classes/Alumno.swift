//
//  Alumno.swift
//  Constraints
//
//  Created by Admin on 31/12/79.
//

import Foundation
import UIKit

class Alumno {
    var fotoPerfil: UIImage
    var nombre: String
    var promedio: Double
    
    init(fotoPerfil: UIImage, nombre: String, promedio: Double) {
        self.fotoPerfil = fotoPerfil
        self.nombre = nombre
        self.promedio = promedio
    }
}
