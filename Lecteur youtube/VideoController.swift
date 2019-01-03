//
//  VideoController.swift
//  Lecteur youtube
//
//  Created by bernardot vivien on 03/01/2019.
//  Copyright © 2019 bernardot vivien. All rights reserved.
//

import UIKit

class VideoController: UIViewController {
    
    var chanson: Chanson?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        if chanson != nil {
            title = chanson!.titre
        }
       
    }
    

   

}
