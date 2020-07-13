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
    var areaNumber = 0
    var cityNumber = 0
    var areaArray = [String]()
    
    @IBOutlet weak var cityLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityLabel.text = cityString
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = false
    }
    
  
    @IBAction func pushButton0(_ sender: Any) {
        if areaNumber == 0{
            var dohokuArray = UserDefaults.standard.array(forKey: "Dohoku")
            dohokuArray?[cityNumber] = 0
            UserDefaults.standard.set(dohokuArray,forKey: "Dohoku")
        }else if areaNumber == 1{
            var dohokuArray = UserDefaults.standard.array(forKey: "Doto")
            dohokuArray?[cityNumber] = 0
            UserDefaults.standard.set(dohokuArray,forKey: "Doto")
        }else if areaNumber == 2{
        var dohokuArray = UserDefaults.standard.array(forKey: "Tokachi")
        dohokuArray?[cityNumber] = 0
        UserDefaults.standard.set(dohokuArray,forKey: "Tokachi")
        }else if areaNumber == 3{
        var dohokuArray = UserDefaults.standard.array(forKey: "Douou")
        dohokuArray?[cityNumber] = 0
        UserDefaults.standard.set(dohokuArray,forKey: "Douou")
        }else if areaNumber == 4{
        var dohokuArray = UserDefaults.standard.array(forKey: "Donan")
        dohokuArray?[cityNumber] = 0
        UserDefaults.standard.set(dohokuArray,forKey: "Donan")
        }
        //画面戻る
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func pushButton1(_ sender: Any) {
        if areaNumber == 0{
                   var dohokuArray = UserDefaults.standard.array(forKey: "Dohoku")
                   dohokuArray?[cityNumber] = 1
                   UserDefaults.standard.set(dohokuArray,forKey: "Dohoku")
               }else if areaNumber == 1{
                   var dohokuArray = UserDefaults.standard.array(forKey: "Doto")
                   dohokuArray?[cityNumber] = 1
                   UserDefaults.standard.set(dohokuArray,forKey: "Doto")
               }else if areaNumber == 2{
               var dohokuArray = UserDefaults.standard.array(forKey: "Tokachi")
               dohokuArray?[cityNumber] = 1
               UserDefaults.standard.set(dohokuArray,forKey: "Tokachi")
               }else if areaNumber == 3{
               var dohokuArray = UserDefaults.standard.array(forKey: "Douou")
               dohokuArray?[cityNumber] = 1
               UserDefaults.standard.set(dohokuArray,forKey: "Douou")
               }else if areaNumber == 4{
               var dohokuArray = UserDefaults.standard.array(forKey: "Donan")
               dohokuArray?[cityNumber] = 1
               UserDefaults.standard.set(dohokuArray,forKey: "Donan")
               }
        //画面戻る
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func pushButton2(_ sender: Any) {
        if areaNumber == 0{
                   var dohokuArray = UserDefaults.standard.array(forKey: "Dohoku")
                   dohokuArray?[cityNumber] = 2
                   UserDefaults.standard.set(dohokuArray,forKey: "Dohoku")
               }else if areaNumber == 1{
                   var dohokuArray = UserDefaults.standard.array(forKey: "Doto")
                   dohokuArray?[cityNumber] = 2
                   UserDefaults.standard.set(dohokuArray,forKey: "Doto")
               }else if areaNumber == 2{
               var dohokuArray = UserDefaults.standard.array(forKey: "Tokachi")
               dohokuArray?[cityNumber] = 2
               UserDefaults.standard.set(dohokuArray,forKey: "Tokachi")
               }else if areaNumber == 3{
               var dohokuArray = UserDefaults.standard.array(forKey: "Douou")
               dohokuArray?[cityNumber] = 2
               UserDefaults.standard.set(dohokuArray,forKey: "Douou")
               }else if areaNumber == 4{
               var dohokuArray = UserDefaults.standard.array(forKey: "Donan")
               dohokuArray?[cityNumber] = 2
               UserDefaults.standard.set(dohokuArray,forKey: "Donan")
               }
        //画面戻る
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func pushButton3(_ sender: Any) {
        if areaNumber == 0{
                   var dohokuArray = UserDefaults.standard.array(forKey: "Dohoku")
                   dohokuArray?[cityNumber] = 3
                   UserDefaults.standard.set(dohokuArray,forKey: "Dohoku")
               }else if areaNumber == 1{
                   var dohokuArray = UserDefaults.standard.array(forKey: "Doto")
                   dohokuArray?[cityNumber] = 3
                   UserDefaults.standard.set(dohokuArray,forKey: "Doto")
               }else if areaNumber == 2{
               var dohokuArray = UserDefaults.standard.array(forKey: "Tokachi")
               dohokuArray?[cityNumber] = 3
               UserDefaults.standard.set(dohokuArray,forKey: "Tokachi")
               }else if areaNumber == 3{
               var dohokuArray = UserDefaults.standard.array(forKey: "Douou")
               dohokuArray?[cityNumber] = 3
               UserDefaults.standard.set(dohokuArray,forKey: "Douou")
               }else if areaNumber == 4{
               var dohokuArray = UserDefaults.standard.array(forKey: "Donan")
               dohokuArray?[cityNumber] = 3
               UserDefaults.standard.set(dohokuArray,forKey: "Donan")
               }
        //画面戻る
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func pushButton4(_ sender: Any) {
        if areaNumber == 0{
                   var dohokuArray = UserDefaults.standard.array(forKey: "Dohoku")
                   dohokuArray?[cityNumber] = 4
                   UserDefaults.standard.set(dohokuArray,forKey: "Dohoku")
               }else if areaNumber == 1{
                   var dohokuArray = UserDefaults.standard.array(forKey: "Doto")
                   dohokuArray?[cityNumber] = 4
                   UserDefaults.standard.set(dohokuArray,forKey: "Doto")
               }else if areaNumber == 2{
               var dohokuArray = UserDefaults.standard.array(forKey: "Tokachi")
               dohokuArray?[cityNumber] = 4
               UserDefaults.standard.set(dohokuArray,forKey: "Tokachi")
               }else if areaNumber == 3{
               var dohokuArray = UserDefaults.standard.array(forKey: "Douou")
               dohokuArray?[cityNumber] = 4
               UserDefaults.standard.set(dohokuArray,forKey: "Douou")
               }else if areaNumber == 4{
               var dohokuArray = UserDefaults.standard.array(forKey: "Donan")
               dohokuArray?[cityNumber] = 4
               UserDefaults.standard.set(dohokuArray,forKey: "Donan")
               }
        //画面戻る
        self.dismiss(animated: true, completion: nil)
    }
}
