//
//  AvalieViewController.swift
//  SatisfactionApp 
//
//  Created by user264011 on 10/26/24.
//

import UIKit

class AvalieViewController: UIViewController {
    @IBOutlet weak var textoPergunta: UILabel!
    
    @IBOutlet var BotoesResposta: [UIButton]!
    @IBAction func cliqueResposta(_ sender: UIButton) {
        print(sender.tag)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        // Do any additional setup after loading the view.
    }
    
    func configurarLayout(){
        for botao in BotoesResposta{
            //botao.tintColor = .black
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
