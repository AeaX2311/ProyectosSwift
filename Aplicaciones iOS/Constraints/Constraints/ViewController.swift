//
//  ViewController.swift
//  Constraints
//
//  Created by Admin on 31/12/79.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvbAlumnos: UITableView!
    
    var alumnos: [Alumno] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        llenarAlumnos()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as! CeldaAlumnoController
        celda.asignarAlumno(alumno: alumnos[indexPath.row])
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 150
    }
    
    func llenarAlumnos() {
        var alumno = Alumno(fotoPerfil: UIImage(named: "Alumno1")!, nombre: "Alumno 1", promedio: 95)
        alumnos.append(alumno)
        
        alumno = Alumno(fotoPerfil: UIImage(named: "Alumno1")!, nombre: "Alumno 2", promedio: 65)
        alumnos.append(alumno)
        
        alumno = Alumno(fotoPerfil: UIImage(named: "Alumno1")!, nombre: "Alumno 3", promedio: 45)
        alumnos.append(alumno)
        
        alumno = Alumno(fotoPerfil: UIImage(named: "Alumno1")!, nombre: "Alumno 4", promedio: 100)
        alumnos.append(alumno)
        
        alumno = Alumno(fotoPerfil: UIImage(named: "Alumno1")!, nombre: "Alumno 5", promedio: 66)
        alumnos.append(alumno)
        
        alumno = Alumno(fotoPerfil: UIImage(named: "Alumno1")!, nombre: "Alumno 6", promedio: 47)
        alumnos.append(alumno)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vistaDestino = segue.destination as? ConsultarController {
            vistaDestino.selectedAlumno = alumnos[tvbAlumnos.indexPathForSelectedRow!.row]
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "PasarDatos", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

