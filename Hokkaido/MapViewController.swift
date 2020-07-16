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
    
   
    @IBOutlet weak var scoreNum: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let regionLabelList = [wakkanaiLabel,nayoroLabel,esashiLabel,monbetsuLabel,shiretokoLabel, abashiriLabel, shibetsuLabel, nemuroLabel,kitamiLabel,erimoLabel, obihiroLabel, kushiroLabel,sapporoLabel,asahikawaLabel , otaruLabel,rumoiLabel,kudoLabel, hakodateLabel,tomakomaiLabel , muroranLabel]
        
        regionLabelList.forEach { regionLabelSetting(label: $0!) }
        UserDefaults.standard.register(defaults: ["TotalScore" : 0])
        
        UserDefaults.standard.register(defaults: ["Dohoku" : Array<Int>(repeating: 0, count:4),
               "Doto" : Array<Int>(repeating: 0, count:5),
               "Tokachi" : Array<Int>(repeating: 0, count:3),
               "Douou" : Array<Int>(repeating: 0, count:4),
               "Donan" : Array<Int>(repeating: 0, count:4)])
        
        let totalNum = UserDefaults.standard.integer(forKey: "TotalScore")
        scoreNum.text = String(totalNum)
        print(scoreNum.text!)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           
           navigationController?.isNavigationBarHidden = false
        
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
                  self.navigationController!.navigationBar.shadowImage = UIImage()
        
        
        
        let dohokuArray: [UILabel] = [wakkanaiLabel,nayoroLabel,esashiLabel,monbetsuLabel]
        let dotoArray: [UILabel] = [shiretokoLabel, abashiriLabel, shibetsuLabel, nemuroLabel,kitamiLabel]
        let tokachiArray: [UILabel] = [erimoLabel, obihiroLabel, kushiroLabel]
        let dououArray: [UILabel] = [sapporoLabel,asahikawaLabel , otaruLabel,rumoiLabel ]
        let donanArray: [UILabel] = [kudoLabel, hakodateLabel,tomakomaiLabel , muroranLabel]
        
        let dohokuColorArray = UserDefaults.standard.array(forKey: "Dohoku") as! [Int]
        let dotoColorArray = UserDefaults.standard.array(forKey: "Doto") as! [Int]
        let tokachiColorArray = UserDefaults.standard.array(forKey: "Tokachi") as! [Int]
        let dououColorArray = UserDefaults.standard.array(forKey: "Douou") as! [Int]
        let donanColorArray = UserDefaults.standard.array(forKey: "Donan") as! [Int]
        
       // print("dohokuArray:\(dohokuArray)")
       // print("dohokucolorArray:\(dohokuColorArray)")
        colorAssignment(labelArray: dohokuArray, colorArray: dohokuColorArray)
        colorAssignment(labelArray: dotoArray, colorArray: dotoColorArray)
        colorAssignment(labelArray: tokachiArray, colorArray: tokachiColorArray)
        colorAssignment(labelArray: dououArray, colorArray: dououColorArray)
        colorAssignment(labelArray: donanArray, colorArray: donanColorArray)
        
        let total = totalScore(r1: dohokuColorArray, r2: dotoColorArray, r3: tokachiColorArray, r4: dououColorArray, r5: donanColorArray)
        scoreNum.text = String(total)
        
       }

    func colorAssignment(labelArray: [UILabel],colorArray: [Int]){
        for i in 0..<colorArray.count{
            if colorArray[i] == 0{
                labelArray[i].backgroundColor = UIColor.gray.withAlphaComponent(0.5)
            }else if colorArray[i] == 1{
                labelArray[i].backgroundColor = UIColor.blue.withAlphaComponent(0.5)
            }else if colorArray[i] == 2{
                labelArray[i].backgroundColor = UIColor.green.withAlphaComponent(0.5)
            }else if colorArray[i] == 3{
                labelArray[i].backgroundColor = UIColor.yellow.withAlphaComponent(0.5)
            }else if colorArray[i] == 4{
                labelArray[i].backgroundColor = UIColor.red.withAlphaComponent(0.5)
            }
        }
    }
    
    func totalScore(r1: [Int],r2: [Int],r3: [Int],r4: [Int],r5: [Int]) -> Int{
        let totalArray = r1+r2+r3+r4+r5
        let result: Int = totalArray.reduce(0) { $0 + $1 }
        return result
    }
    
    func regionLabelSetting(label: UILabel){
        label.layer.cornerRadius = 25
        label.clipsToBounds = true
        label.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
    }
    
}
