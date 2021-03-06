//
//  TableauController.swift
//  Lecteur youtube
//
//  Created by bernardot vivien on 30/12/2018.
//  Copyright © 2018 bernardot vivien. All rights reserved.
//

import UIKit

class TableauController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var chansons = [Chanson]()
    let identifiantCell = "ChansonCell"
    let identifiantSegue = "VersVideo"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        ajouterChanson()
        title = "Mes vidéos préférées"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let chanson = chansons[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifiantCell) as? ChansonCell {
            cell.creerCell(chanson)
            return cell
        }
        
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let chanson = chansons[indexPath.row]
        performSegue(withIdentifier: identifiantSegue, sender: chanson)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == identifiantSegue {
            if let nouveauController = segue.destination as? VideoController {
                nouveauController.chanson = sender as? Chanson
            }
        }
    }
    
    func ajouterChanson() {
    chansons = [Chanson]()
        let cash = Chanson(artiste: "Cordux et Voice", titre: "Cash'n Guns", code: "byVoymKz4E4")
        chansons.append(cash)
        let timeLine = Chanson(artiste: "Cordux et Voice", titre: "TimeLine", code: "jc7I--fjs0E")
        chansons.append(timeLine)
        let seenot = Chanson(artiste: "Cordux et Voice", titre: "Seenot", code: "J3MgSInlTmo")
        chansons.append(seenot)
        let top5Noel = Chanson(artiste: "Cordux et Voice", titre: "Top 05 Noël 2017", code:"OM6fef8poS8")
        chansons.append(top5Noel)
        let nosferatu = Chanson(artiste: "Cordux et Voice", titre: "Nosferatu", code: "dbXJVNTbREs")
        chansons.append(nosferatu)
        let colt = Chanson(artiste: "Cordux et Voice", titre: "Colt Express", code: "kS9z9Vv45oY")
        chansons.append(colt)
        let timeStories = Chanson(artiste: "Cordux et Voice", titre: "Time Stories", code: "YdiuqVmbr_E")
        chansons.append(timeStories)
        let room25 = Chanson(artiste: "Cordux et Voice", titre: "Room 25", code: "290UHCBSkj0")
        chansons.append(room25)
        let hanabi = Chanson(artiste: "Cordux et Voice", titre: "Hanabi", code: "vE7_HCfTgQU")
        chansons.append(hanabi)
        let meeple = Chanson(artiste: "Cordux et Voice", titre: "Meeple Circus", code: "jq7ZjJH27ms")
        chansons.append(meeple)
        
        //Reloadata rechargement de la vidéo dans le tableau de vue mettre à jour
        tableView.reloadData()
    }
}
