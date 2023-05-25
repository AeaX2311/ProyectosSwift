//
//  Auto.swift
//  ExamenU2
//
//  Created by Admin on 20/04/23.
//

import Foundation

class Auto {
    private var _nombre: String
    private var _costo: Double

    init(nombre: String, costo: Double) {
        self._nombre = nombre
        self._costo = costo
    }

    var nombre: String {
        get {
            return _nombre
        }
        set {
            _nombre = newValue
        }
    }

    var costo: Double {
        get {
            return _costo
        }
        set {
            _costo = newValue
        }
    }

    func toString() -> String {
        return "\(_nombre) $\(_costo)"
    }
}