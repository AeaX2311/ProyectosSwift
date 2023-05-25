//
//  SelectedItemController.swift
//  EjercicioTablas
//
//  Created by Admin on 23/05/23.
//

import UIKit

class SelectedItemController: UITableViewCell {
    @IBOutlet weak var ivImagen: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblCosto: UILabel!
    @IBOutlet weak var lblUnidadesDisponibles: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func asignarItem(item: Item) {
        ivImagen.image = item.imagen
        lblNombre.text = item.nombre
        lblCosto.text = String(item.costo)
        lblUnidadesDisponibles.text = String(item.unidadesDisponibles)
    }
}
