//
//  PetTableViewController.swift
//  pet-rate
//
//  Created by Pedro Martins on 04/04/21.
//

import UIKit

class PetTableViewController: UITableViewController {
    
    var Pets = [Pet(nome: "Cachorro", nota: 5),
                Pet(nome: "Gato", nota: 5),
                Pet(nome: "Peixe", nota: 5)]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Pets.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        let pet = Pets[indexPath.row]
        
        celula.textLabel?.text = pet.nome
        
        return celula
    }
    
    func addPet(_ pet: Pet){
        Pets.append(pet)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? ViewController {
            viewController.tableViewController = self
        }
    }
}
