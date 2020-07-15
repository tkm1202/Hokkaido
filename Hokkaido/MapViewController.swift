//
//  MapViewController.swift
//  Hokkaido
//
//  Created by 加藤拓洋 on 2020/06/08.
//  Copyright © 2020 TakumiKato. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var wakkanaiLabel: UILabel!
    @IBOutlet weak var esashiLabel: UILabel!
    @IBOutlet weak var nayoroLabel: UILabel!
    @IBOutlet weak var rumoiLabel: UILabel!
    @IBOutlet weak var monbetsuLabel: UILabel!
    @IBOutlet weak var asahikawaLabel: UILabel!
    @IBOutlet weak var kitamiLabel: UILabel!
    @IBOutlet weak var abashiriLabel: UILabel!
    @IBOutlet weak var shiretokoLabel: UILabel!
    @IBOutlet weak var shibetsuLabel: UILabel!
    @IBOutlet weak var nemuroLabel: UILabel!
    @IBOutlet weak var kushiroLabel: UILabel!
    @IBOutlet weak var obihiroLabel: UILabel!
    @IBOutlet weak var erimoLabel: UILabel!
    @IBOutlet weak var tomakomaiLabel: UILabel!
    @IBOutlet weak var sapporoLabel: UILabel!
    @IBOutlet weak var otaruLabel: UILabel!
    @IBOutlet weak var muroranLabel: UILabel!
    @IBOutlet weak var kudoLabel: UILabel!
    @IBOutlet weak var hakodateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           
           navigationController?.isNavigationBarHidden = false
       }

   
}
