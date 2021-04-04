//
//  Pet.swift
//  pet-rate
//
//  Created by Pedro Martins on 04/04/21.
//

import UIKit

class Pet: NSObject {
    let nome: String
    let nota: Int
    
    init(nome: String, nota: Int) {
        self.nome = nome
        self.nota = nota
    }
}
