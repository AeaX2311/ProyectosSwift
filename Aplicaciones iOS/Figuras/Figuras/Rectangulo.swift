//
//  Rectangulo.swift
//  Figuras
//
//  Created by Karla Rodriguez on 05/04/22.
//

import Foundation
class Rectangulo: Figura {
  private var largo: Double
  private var ancho: Double


  init(largo: Double, ancho: Double) {
    self.largo = largo
    self.ancho = ancho
  }
  
  var Largo: Double{
    get{return largo}
    set {largo = newValue}
  }

  var Ancho: Double{
    get{return ancho}
    set {ancho = newValue}
  }
  
  override func CalcularArea() -> Double {
    return largo * ancho
  }
}
