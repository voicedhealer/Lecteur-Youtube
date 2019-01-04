//
//  VideoController.swift
//  Lecteur youtube
//
//  Created by bernardot vivien on 03/01/2019.
//  Copyright © 2019 bernardot vivien. All rights reserved.
//

import UIKit
import WebKit

class VideoController: UIViewController {
    
    @IBOutlet weak var WebView: WKWebView!
    
    
    
    var chanson: Chanson?

    override func viewDidLoad() {
        super.viewDidLoad()
        if chanson != nil {
           chargerVideo(chanson: chanson!)
        }
       
    }
    
    func chargerVideo(chanson: Chanson) {
        if let url = URL(string: chanson.videoUrl) {
            let requete = URLRequest(url: url)
            WebView.load(requete)
        }
    }
   

}
