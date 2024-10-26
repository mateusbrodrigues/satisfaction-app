//
//  ViewController.swift
//  FirstApp
//
//  Created by user264011 on 10/26/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var botaoIniciar: UIButton!
    @IBAction func botaoPressionado(_ sender: Any) {
        print("O botao foi pressionado")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
    }
    
    func configurarLayout(){
        botaoIniciar.layer.cornerRadius = 1.0
        
        
    }

}

