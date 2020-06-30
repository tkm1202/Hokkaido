//
//  NextDohokuViewController.swift
//  Hokkaido
//
//  Created by takumi on 2020/07/01.
//  Copyright © 2020 TakumiKato. All rights reserved.
//

import UIKit

class NextDohokuViewController: UIViewController {

    var cityString = String()
    @IBOutlet weak var cityLabel: UILabel!
    
    
    @IBOutlet weak var button5: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityLabel.text = cityString
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = false
    }
    
    

  
}
