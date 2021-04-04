//
//  StreamTableViewController.swift
//  stream-rate
//
//  Created by Pedro Martins on 04/04/21.
//

import UIKit

class StreamTableViewController: UITableViewController {
    
    let streams = [Stream(nome: "BrunaRodrigues", plataforma: "Twitch", nota: 5),
                   Stream(nome: "Ammy", plataforma: "Twitch", nota: 5),
                   Stream(nome: "BarbiiAshe", plataforma: "Twitch", nota: 5)]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return streams.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let stream = streams[indexPath.row]
        
        celula.textLabel?.text = stream.nome
        
        return celula
    }
    
}
