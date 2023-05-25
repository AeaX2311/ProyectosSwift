//
//  Item.swift
//  EjercicioTablas
//
//  Created by Admin on 23/05/23.
//

import Foundation
import UIKit

class Item {
    var nombre: String
    var costo: Double
    var unidadesDisponibles: Int
    var imagen: UIImage
    var descripcion: String
    
    init(imagen: UIImage, nombre: String, costo: Double, unidadesDisponibles: Int, descripcion: String) {
        self.nombre = nombre
        self.costo = costo
        self.unidadesDisponibles = unidadesDisponibles
        self.imagen = imagen
        self.descripcion = descripcion
    }
}
