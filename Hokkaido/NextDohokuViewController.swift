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
        
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
                  self.navigationController!.navigationBar.shadowImage = UIImage()
    }
    
  
    @IBAction func pushButton0(_ sender: Any) {
        if areaNumber == 0{
            var dohokuArray = UserDefaults.standard.array(forKey: "Dohoku")
            dohokuArray?[cityNumber] = 0
            print(dohokuArray ?? "error")
            UserDefaults.standard.set(dohokuArray,forKey: "Dohoku")
        }else if areaNumber == 1{
            var dotoArray = UserDefaults.standard.array(forKey: "Doto")
            dotoArray?[cityNumber] = 0
            UserDefaults.standard.set(dotoArray,forKey: "Doto")
            print(dotoArray ?? "error")
        }else if areaNumber == 2{
        var tokachiArray = UserDefaults.standard.array(forKey: "Tokachi")
        tokachiArray?[cityNumber] = 0
        UserDefaults.standard.set(tokachiArray,forKey: "Tokachi")
            print(tokachiArray ?? "error")
        }else if areaNumber == 3{
        var dououArray = UserDefaults.standard.array(forKey: "Douou")
        dououArray?[cityNumber] = 0
        UserDefaults.standard.set(dououArray,forKey: "Douou")
            print(dououArray ?? "error")
        }else if areaNumber == 4{
        var donanArray = UserDefaults.standard.array(forKey: "Donan")
        donanArray?[cityNumber] = 0
        UserDefaults.standard.set(donanArray,forKey: "Donan")
            print(donanArray ?? "error")
        }
        //画面戻る
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    @IBAction func pushButton1(_ sender: Any) {
        if areaNumber == 0{
                   var dohokuArray = UserDefaults.standard.array(forKey: "Dohoku")
                   dohokuArray?[cityNumber] = 1
                   UserDefaults.standard.set(dohokuArray,forKey: "Dohoku")
            print(dohokuArray ?? "error")
               }else if areaNumber == 1{
                   var dohokuArray = UserDefaults.standard.array(forKey: "Doto")
                   dohokuArray?[cityNumber] = 1
                   UserDefaults.standard.set(dohokuArray,forKey: "Doto")
            print(dohokuArray ?? "error")
               }else if areaNumber == 2{
               var dohokuArray = UserDefaults.standard.array(forKey: "Tokachi")
               dohokuArray?[cityNumber] = 1
               UserDefaults.standard.set(dohokuArray,forKey: "Tokachi")
            print(dohokuArray ?? "error")
               }else if areaNumber == 3{
               var dohokuArray = UserDefaults.standard.array(forKey: "Douou")
               dohokuArray?[cityNumber] = 1
               UserDefaults.standard.set(dohokuArray,forKey: "Douou")
            print(dohokuArray ?? "error")
               }else if areaNumber == 4{
               var dohokuArray = UserDefaults.standard.array(forKey: "Donan")
               dohokuArray?[cityNumber] = 1
               UserDefaults.standard.set(dohokuArray,forKey: "Donan")
            print(dohokuArray ?? "error")
               }
        //画面戻る
         self.navigationController?.popViewController(animated: true)
       
    }
    
    
    @IBAction func pushButton2(_ sender: Any) {
        if areaNumber == 0{
                   var dohokuArray = UserDefaults.standard.array(forKey: "Dohoku")
                   dohokuArray?[cityNumber] = 2
                   UserDefaults.standard.set(dohokuArray,forKey: "Dohoku")
            print(dohokuArray ?? "error")
               }else if areaNumber == 1{
                   var dohokuArray = UserDefaults.standard.array(forKey: "Doto")
                   dohokuArray?[cityNumber] = 2
                   UserDefaults.standard.set(dohokuArray,forKey: "Doto")
            print(dohokuArray ?? "error")
               }else if areaNumber == 2{
               var dohokuArray = UserDefaults.standard.array(forKey: "Tokachi")
               dohokuArray?[cityNumber] = 2
               UserDefaults.standard.set(dohokuArray,forKey: "Tokachi")
            print(dohokuArray ?? "error")
               }else if areaNumber == 3{
               var dohokuArray = UserDefaults.standard.array(forKey: "Douou")
               dohokuArray?[cityNumber] = 2
               UserDefaults.standard.set(dohokuArray,forKey: "Douou")
            print(dohokuArray ?? "error")
               }else if areaNumber == 4{
               var dohokuArray = UserDefaults.standard.array(forKey: "Donan")
               dohokuArray?[cityNumber] = 2
               UserDefaults.standard.set(dohokuArray,forKey: "Donan")
            print(dohokuArray ?? "error")
               }
        //画面戻る
         self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func pushButton3(_ sender: Any) {
        if areaNumber == 0{
                   var dohokuArray = UserDefaults.standard.array(forKey: "Dohoku")
                   dohokuArray?[cityNumber] = 3
                   UserDefaults.standard.set(dohokuArray,forKey: "Dohoku")
            print(dohokuArray ?? "error")
               }else if areaNumber == 1{
                   var dohokuArray = UserDefaults.standard.array(forKey: "Doto")
                   dohokuArray?[cityNumber] = 3
                   UserDefaults.standard.set(dohokuArray,forKey: "Doto")
            print(dohokuArray ?? "error")
               }else if areaNumber == 2{
               var dohokuArray = UserDefaults.standard.array(forKey: "Tokachi")
               dohokuArray?[cityNumber] = 3
               UserDefaults.standard.set(dohokuArray,forKey: "Tokachi")
            print(dohokuArray ?? "error")
               }else if areaNumber == 3{
               var dohokuArray = UserDefaults.standard.array(forKey: "Douou")
               dohokuArray?[cityNumber] = 3
               UserDefaults.standard.set(dohokuArray,forKey: "Douou")
            print(dohokuArray ?? "error")
               }else if areaNumber == 4{
               var dohokuArray = UserDefaults.standard.array(forKey: "Donan")
               dohokuArray?[cityNumber] = 3
               UserDefaults.standard.set(dohokuArray,forKey: "Donan")
            print(dohokuArray ?? "error")
               }
        //画面戻る
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func pushButton4(_ sender: Any) {
        if areaNumber == 0{
                   var dohokuArray = UserDefaults.standard.array(forKey: "Dohoku")
                   dohokuArray?[cityNumber] = 4
                   UserDefaults.standard.set(dohokuArray,forKey: "Dohoku")
            print(dohokuArray ?? "error")
               }else if areaNumber == 1{
                   var dohokuArray = UserDefaults.standard.array(forKey: "Doto")
                   dohokuArray?[cityNumber] = 4
                   UserDefaults.standard.set(dohokuArray,forKey: "Doto")
            print(dohokuArray ?? "error")
               }else if areaNumber == 2{
               var dohokuArray = UserDefaults.standard.array(forKey: "Tokachi")
               dohokuArray?[cityNumber] = 4
               UserDefaults.standard.set(dohokuArray,forKey: "Tokachi")
            print(dohokuArray ?? "error")
               }else if areaNumber == 3{
               var dohokuArray = UserDefaults.standard.array(forKey: "Douou")
               dohokuArray?[cityNumber] = 4
               UserDefaults.standard.set(dohokuArray,forKey: "Douou")
            print(dohokuArray ?? "error")
               }else if areaNumber == 4{
               var dohokuArray = UserDefaults.standard.array(forKey: "Donan")
               dohokuArray?[cityNumber] = 4
               UserDefaults.standard.set(dohokuArray,forKey: "Donan")
            print(dohokuArray ?? "error")
               }
        //画面戻る
        self.navigationController?.popViewController(animated: true)
    }
}
