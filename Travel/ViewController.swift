//
//  ViewController.swift
//  Travel
//
//  Created by Juan Morillo on 19/7/16.
//  Copyright © 2016 JuanMorillios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloViajero: UILabel!
    @IBOutlet weak var namePassenger: UITextField!
    @IBOutlet weak var nameDestino: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
      
        helloViajero.text = ""
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonViajarPressed(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "🛫Bienvenido:\(namePassenger.text!)?", message: "Ha elegido el siguiente destino 🛬: \(nameDestino.text!)", preferredStyle: .alert)
    
       present(alertController, animated: true, completion: nil)
        
       let okAction = UIAlertAction(title: "Confirmar ✈️", style: .default, handler: nil)
        
        let cancelAction = UIAlertAction(title: "Cancelar ", style: .default, handler: nil)
        
        helloViajero.text = "Nombre Pasajero:: \(namePassenger.text!) destino seleccionado: \(nameDestino.text!), Felíz Viaje!!!"
        
        
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
    }

}

