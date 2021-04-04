//
//  ViewController.swift
//  stream-rate
//
//  Created by Pedro Martins on 04/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nomeStreamer: UITextField?
    @IBOutlet var plataformaStreamer: UITextField?
    @IBOutlet var notaStreamer: UITextField?
    
    @IBAction func adicionaStreamer() {
     
        guard let nomeDoStreamer = nomeStreamer?.text else {
            return
        }
        
        guard let PlataformaDoStreamer = plataformaStreamer?.text else {
            return
        }
        
        guard let notaDoStreamer = notaStreamer?.text, let notaDaStream = Int(notaDoStreamer) else {
            return
        }
        
        let stream = Stream(nome: nomeDoStreamer, plataforma: PlataformaDoStreamer, nota: notaDaStream)
        
        print("Você está assistindo a stream de \(stream.nome) na plataforma \(stream.plataforma). A nota atual da stream é \(stream.nota)")
        
    }
}

