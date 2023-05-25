//
//  ListViewController.swift
//  EjercicioTablas
//
//  Created by Admin on 23/05/23.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvElementos: UITableView!
    var items :[Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tvElementos.delegate = self
        tvElementos.dataSource = self
        
        cargarItems()
    }
    
    func cargarItems() {
        var item = Item(imagen: UIImage(named: "Item1")!, nombre: "Computadora", costo: 10330, unidadesDisponibles: 13, descripcion: "Esta es la descripcion del primer elemento que es posible comprar. Descripcion del elemento de prueba 1.")
        items.append(item)

        item = Item(imagen: UIImage(named: "Item2")!, nombre: "Celular", costo: 7999, unidadesDisponibles: 23, descripcion: "Esta es la descripcion del segundo elemento que es posible comprar. Descripcion del elemento de prueba 2.")
        items.append(item)

        item = Item(imagen: UIImage(named: "Item3")!, nombre: "Audifonos", costo: 999, unidadesDisponibles: 3, descripcion: "Esta es la descripcion del tercer elemento que es posible comprar. Descripcion del elemento de prueba 3.")
        items.append(item)

        item = Item(imagen: UIImage(named: "Item4")!, nombre: "Teclado", costo: 499, unidadesDisponibles: 1, descripcion: "Esta es la descripcion del cuarto elemento que es posible comprar. Descripcion del elemento de prueba 4.")
        items.append(item)

        item = Item(imagen: UIImage(named: "Item5")!, nombre: "Mouse", costo: 299, unidadesDisponibles: 7, descripcion: "Esta es la descripcion del quinto elemento que es posible comprar. Descripcion del elemento de prueba 5.")
        items.append(item)

        item = Item(imagen: UIImage(named: "Item6")!, nombre: "Monitor", costo: 1999, unidadesDisponibles: 2, descripcion: "Esta es la descripcion del sexto elemento que es posible comprar. Descripcion del elemento de prueba 6.")
        items.append(item)

        item = Item(imagen: UIImage(named: "Item7")!, nombre: "Laptop", costo: 12999, unidadesDisponibles: 4, descripcion: "Esta es la descripcion del septimo elemento que es posible comprar. Descripcion del elemento de prueba 7.")
        items.append(item)

        item = Item(imagen: UIImage(named: "Item8")!, nombre: "Tablet", costo: 5999, unidadesDisponibles: 5, descripcion: "Esta es la descripcion del octavo elemento que es posible comprar. Descripcion del elemento de prueba 8.")
        items.append(item)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaItem") as! SelectedItemController
        celda.asignarItem(item: items[indexPath.row])
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "PasarDatos", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vistaDestino = segue.destination as? ViewController {
            vistaDestino.selectedItem = items[tvElementos.indexPathForSelectedRow!.row]
        }
    }
}
