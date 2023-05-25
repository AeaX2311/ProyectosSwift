//
//  ViewController.swift
//  EjercicioTablas
//
//  Created by Admin on 31/12/79.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ivImagen: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblCosto: UILabel!
    @IBOutlet weak var lblUnidadesDisponibles: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!

    var selectedItem :Item?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cargarDatos()
    }

    func cargarDatos() {
        if selectedItem == nil {
            return
        }
        
        ivImagen.image = selectedItem?.imagen
        lblNombre.text = selectedItem?.nombre
        lblCosto.text = String(selectedItem?.costo ?? 0)
        lblUnidadesDisponibles.text = String(selectedItem?.unidadesDisponibles ?? 0)
        lblDescripcion.text = selectedItem?.descripcion
    }

    @IBAction func btnComprarClick(_ sender: Any) {
        mostrarAlerta()
    }
    
    func mostrarAlerta() {
        let alerta = UIAlertController(title: "Compra", message: "¿Desea comprar el producto?", preferredStyle: .alert)
        let accionAceptar = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
        let accionCancelar = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alerta.addAction(accionAceptar)
        alerta.addAction(accionCancelar)
        present(alerta, animated: true, completion: nil)
    }
}

