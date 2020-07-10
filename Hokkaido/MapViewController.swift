//
//  MapViewController.swift
//  Hokkaido
//
//  Created by 加藤拓洋 on 2020/06/08.
//  Copyright © 2020 TakumiKato. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           
           navigationController?.isNavigationBarHidden = false
       }

   
}
