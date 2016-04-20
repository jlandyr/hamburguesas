//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Pedro Jose on 20/4/16.
//  Copyright © 2016 eureka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelPais: UILabel!
    @IBOutlet weak var labelNombreHamburguesa: UILabel!
    @IBOutlet weak var imageHamburguesa: UIImageView!
    
    let hamburguesas = ColeccionDeHamburguesa()
    let paises = ColeccionDePaises()
    let colores = ColeccionColores()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func mostrarHamburguesa(sender: UIButton) {
        self.labelPais.text = paises.obtenerPais()
        self.labelNombreHamburguesa.text = "Hamburguesa de " + hamburguesas.obtenerHamburguesa()
        self.imageHamburguesa.image = UIImage(named: hamburguesas.obtenerHamburguesa())
        
        self.view.backgroundColor = colores.getRandomColor()
    }

}

