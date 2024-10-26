//
//  AvalieViewController.swift
//  SatisfactionApp 
//
//  Created by user264011 on 10/26/24.
//

import UIKit

class AvalieViewController: UIViewController {
    
    var pontos = 0
    var perguntaAtual = 0
    
    @IBOutlet weak var textoPergunta: UILabel!
    
    @IBOutlet var BotoesResposta: [UIButton]!
    @IBAction func cliqueResposta(_ sender: UIButton) {
        if sender.tag == 0 {pontos += 2}
        else if sender.tag == 1 { pontos += 1}
        else if sender.tag == 3 { pontos -= 1}
        else if sender.tag == 4 { pontos -= 2}
        
        if perguntaAtual < perguntas.count - 1 {
            perguntaAtual += 1
            configurarPerguntas()
        }else{
            navegaParaResultado()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarPerguntas()
        // Do any additional setup after loading the view.
    }
    
    func configurarLayout(){
        textoPergunta.numberOfLines = 0
        textoPergunta.textAlignment = .center
        //for botao in BotoesResposta{
            //botao.tintColor = .black
        //}
    }
    
    func configurarPerguntas(){
        textoPergunta.text = perguntas[perguntaAtual].titulo
        for botao in BotoesResposta {
            let tituloBotao = perguntas[perguntaAtual].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultadosVC = segue.destination as? Resultado
        else {return}
        resultadosVC.pontuacao = pontos
        
    }
    
    func navegaParaResultado(){
        performSegue(withIdentifier: "irParaTelaResultado", sender: nil)
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
