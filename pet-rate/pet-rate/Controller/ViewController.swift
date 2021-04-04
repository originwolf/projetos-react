//
//  ViewController.swift
//  pet-rate
//
//  Created by Pedro Martins on 04/04/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nomePetTextField: UITextField?
    @IBOutlet var notaPetTextField: UITextField?
    
    @IBAction func adicionarPet(){
        
        guard let nomePet = nomePetTextField?.text else {
            return
        }
        
        guard let notaPet = notaPetTextField?.text, let nota = Int(notaPet) else {
            return
        }
        
        let pet = Pet(nome: nomePet, nota: nota)
        
        print("Brinquei com um \(pet.nome) e dei nota \(pet.nota)")
    }

}

