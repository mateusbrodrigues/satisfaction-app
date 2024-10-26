//
//  Perguntas.swift
//  SatisfactionApp
//
//  Created by Mateus on 26/10/24.
//

import Foundation

struct Pergunta {
    var titulo: String
    var respostas: [String]
}

let perguntas: [Pergunta] = [
    Pergunta(titulo: "Como você avalia a sua experiência?", respostas: ["Foi top","Boa","Não sei","Ruim","Não volto nunca mais"]),
    Pergunta(titulo: "O que achou desse app?", respostas: ["Muito bom","OK","Não sei", "Não gostei", "Horrível"])
]
