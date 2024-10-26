//
//  Resultado.swift
//  SatisfactionApp
//
//  Created by Mateus on 26/10/24.
//

import UIKit

class Resultado: UIViewController {
    
    @IBOutlet weak var pontuacaoOutlet: UILabel!
    var pontuacao: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        resultado()
        // Do any additional setup after loading the view.
    }
    
    func resultado(){
        guard let pontuacao = pontuacao
        else { return }
        //pontuacaoOutlet.numberOfLines = 4
        pontuacaoOutlet.textAlignment = .center
        
        if pontuacao >= 1{
            pontuacaoOutlet.text = "Agradecemos pela sua confiança! Volte sempre!"
        }else if pontuacao == 0{
            pontuacaoOutlet.text = "Agradecemos a sua avaliação! Volte sempre!"
        }else{
            pontuacaoOutlet.text = "Estaremos sempre trabalhando para melhorar a sua experiência! Volte sempre!"
        }
        print(pontuacao)
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
