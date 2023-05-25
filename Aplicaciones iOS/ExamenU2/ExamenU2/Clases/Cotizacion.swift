//
//  Cotizacion.swift
//  ExamenU2
//
//  Created by Admin on 20/04/23.
//

import Foundation

class Cotizacion {
    private let _tasaAnual: Double = 12.0 //12%

    private var _auto: Auto
    private var _montoEnganche: Int
    private var _plazo: Int

    init(auto: Auto, montoEnganche: Int, plazo: Int) {
        self._auto = auto
        self._montoEnganche = montoEnganche
        self._plazo = plazo
    }

    var auto: Auto {
        get {
            return _auto
        }
        set {
            _auto = newValue
        }
    }

    var montoEnganche: Int {
        get {
            return _montoEnganche
        }
        set {
            _montoEnganche = newValue
        }
    }

    var plazo: Int {
        get {
            return _plazo
        }
        set {
            _plazo = newValue
        }
    }

    func obtenerMontoEnganche() -> Double {
        return Double(Double(_montoEnganche) / 100.0 * Double(_auto.costo))
    }

    private func obtenerMontoCredito() -> Double {
        return _auto.costo - obtenerMontoEnganche()
    }

    private func obtenerTasaInteresMensual() -> Double {
        return _tasaAnual / 12.0 / 100.0
    }

    func calcularPagoMensual() -> Double {
        let montoCredito = obtenerMontoCredito()
        let tasaInteresMensual = obtenerTasaInteresMensual()
        let plazo = Double(_plazo)

        return montoCredito * tasaInteresMensual / ((1.0 - pow(1.0 + tasaInteresMensual, -plazo)))
    }
}
