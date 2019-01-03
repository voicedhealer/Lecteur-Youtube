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
    let identifantCell = "ChansonCell"
    
    
    
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
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifantCell) as? ChansonCell {
            cell.creerCell(chanson)
            return cell
        }
        
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
        
    }
    func ajouterChanson() {
    chansons = [Chanson]()
        let cash = Chanson(artiste: "Cordux et Voice", titre: "Cash'n Guns", code: "byVoymKz4E4&t")
        chansons.append(cash)
        let timeLine = Chanson(artiste: "Cordux et Voice", titre: "TimeLine", code: "jc7I--fjs0E&t")
        chansons.append(timeLine)
        let seenot = Chanson(artiste: "Cordux et Voice", titre: "Seenot", code: "J3MgSInlTmo&t")
        chansons.append(seenot)
        let top5Noel = Chanson(artiste: "Cordux et Voice", titre: "Top 05 Noël 2017", code:"OM6fef8poS8&t")
        chansons.append(top5Noel)
        let nosferatu = Chanson(artiste: "Cordux et Voice", titre: "Nosferatu", code: "dbXJVNTbREs&t")
        chansons.append(nosferatu)
        let colt = Chanson(artiste: "Cordux et Voice", titre: "Colt Express", code: "kS9z9Vv45oY&t")
        chansons.append(colt)
        let timeStories = Chanson(artiste: "Cordux et Voice", titre: "Time Stories", code: "YdiuqVmbr_E&t")
        chansons.append(timeStories)
        let room25 = Chanson(artiste: "Cordux et Voice", titre: "Room 25", code: "290UHCBSkj0&t")
        chansons.append(room25)
        let hanabi = Chanson(artiste: "Cordux et Voice", titre: "Hanabi", code: "vE7_HCfTgQU&t")
        chansons.append(hanabi)
        let meeple = Chanson(artiste: "Cordux et Voice", titre: "Meeple Circus", code: "jq7ZjJH27ms&t")
        chansons.append(meeple)
        
        //Reloadata rechargement de la vidéo dans le tableau de vue mettre à jour
        tableView.reloadData()
    }
}
