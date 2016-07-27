//
//  ViewController.swift
//  Hamburguesas
//
//  Created by jano on 27/7/16.
//  Copyright © 2016 Pablo Gómez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblPais: UILabel!
    @IBOutlet weak var lblHamburguesa: UILabel!
    
    let paises          = ColeccionDePaises()
    let hamburguesas    = ColeccionDeHamburguesa()
    let colores         = Colores()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func dameBurguer() {
        lblHamburguesa.text     = hamburguesas.obtenHamburguesa()
        lblPais.text            = paises.obtenPais()
        
        let colorAleatorio      = colores.regresaColorAleatorio()
        view.backgroundColor    = colorAleatorio
        view.tintColor          = colorAleatorio
    }
}

