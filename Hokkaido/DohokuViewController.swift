//
//  DohokuViewController.swift
//  Hokkaido
//
//  Created by 加藤拓洋 on 2020/06/09.
//  Copyright © 2020 TakumiKato. All rights reserved.
//

import UIKit
 
class DohokuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    // section毎のラベルのarray
    let DohokuArray: NSArray = ["稚内","名寄","留萌"]
    let DotoArray: NSArray = ["知床"]
    let TokachiArray: NSArray = ["苫小牧","襟裳","帯広"]
    let DououArray: NSArray = ["室蘭","札幌","旭川"]
    let DonanArray: NSArray = ["小樽","久遠","函館"]
    
    var DohokuColorArray = Array<Int>(repeating: 0, count:3)
    var DotoColorArray = Array<Int>(repeating: 0, count:1)
    var TokachiColorArray = Array<Int>(repeating: 0, count:3)
    var DououColorArray = Array<Int>(repeating: 0, count:3)
    var DonanColorArray = Array<Int>(repeating: 0, count:3)
    
    //let textArray = []
    private let mySections: NSArray = ["道北", "道東","十勝","道央","道南"]
    
    @IBOutlet weak var dohokuTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dohokuTableView.delegate = self
        dohokuTableView.dataSource = self
        
        
    
        //0:white--4:red
        UserDefaults.standard.set(DohokuColorArray, forKey: "Dohoku")
        UserDefaults.standard.set(DotoColorArray, forKey: "Doto")
        UserDefaults.standard.set(TokachiColorArray, forKey: "Tokachi")
        UserDefaults.standard.set(DououColorArray, forKey: "Douou")
        UserDefaults.standard.set(DonanColorArray, forKey: "Donan")
        UserDefaults.standard.synchronize()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = false
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return mySections.count
    }
    //section title
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
           return mySections[section] as? String
       }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let nextVC = storyboard?.instantiateViewController(identifier: "toNextDohoku") as! NextDohokuViewController
        
        if indexPath.section == 0{
            nextVC.cityString = DohokuArray[indexPath.row] as! String
        }else if indexPath.section == 1{
            nextVC.cityString = DotoArray[indexPath.row] as! String
        }else if indexPath.section == 2{
            nextVC.cityString = TokachiArray[indexPath.row] as! String
        }else if indexPath.section == 3{
            nextVC.cityString = DououArray[indexPath.row] as! String
        }else if indexPath.section == 4{
            nextVC.cityString = DonanArray[indexPath.row] as! String
        }
        nextVC.cityNumber = indexPath.row
        nextVC.areaNumber = indexPath.section
        navigationController?.pushViewController(nextVC, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return DohokuArray.count
        }else if section == 1 {
            return DotoArray.count
        }else if section == 2{
            return TokachiArray.count
        }else if section == 3{
            return DououArray.count
        }else if section == 4{
            return DonanArray.count
        }
        return 0
       }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         if let cell = dohokuTableView.dequeueReusableCell(withIdentifier: "DohokuCell") as? DohokuCell {
            
            if indexPath.section == 0 {
                       print("indexPath.section == 0")
            
                let label = cell.regionLabel!
                       label.text = String(describing: DohokuArray[indexPath.row])
                   }
                   else if indexPath.section == 1 {
                       print("indexPath.section == 1")
                       let label = cell.regionLabel!
                       label.text = String(describing: DotoArray[indexPath.row])
                   }
                   else if indexPath.section == 2 {
                       print("indexPath.section == 2")
                      let label = cell.regionLabel!
                      label.text = String(describing: TokachiArray[indexPath.row])
                   }
            else if indexPath.section == 3 {
                print("indexPath.section == 3")
               let label = cell.regionLabel!
               label.text = String(describing: DououArray[indexPath.row])
            }
            else if indexPath.section == 4 {
                print("indexPath.section == 4")
               let label = cell.regionLabel!
               label.text = String(describing: DonanArray[indexPath.row])
            }
           // cell.regionLabel!.text = textArray[indexPath.row]
             return cell
         }
         return UITableViewCell()
    }

      
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height/10
    }
    
}
