//
//  Stream.swift
//  stream-rate
//
//  Created by Pedro Martins on 04/04/21.
//

import UIKit

class Stream: NSObject {
    var nome: String
    var plataforma: String
    var nota: Int
    
    init(nome: String, plataforma: String, nota: Int) {
        self.nome = nome
        self.plataforma = plataforma
        self.nota = nota
    }
}
