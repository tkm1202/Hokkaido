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
    let DohokuArray: NSArray = ["稚内","名寄","枝幸","紋別"]
    let DotoArray: NSArray = ["知床","網走","標津","根室","北見"]
    let TokachiArray: NSArray = ["襟裳","帯広","釧路"]
    let DououArray: NSArray = ["札幌","旭川","小樽","留萌"]
    let DonanArray: NSArray = ["久遠","函館","苫小牧","室蘭"]
    
    var DohokuColorArray = Array<Int>(repeating: 0, count:4)
    var DotoColorArray = Array<Int>(repeating: 0, count:5)
    var TokachiColorArray = Array<Int>(repeating: 0, count:3)
    var DououColorArray = Array<Int>(repeating: 0, count:4)
    var DonanColorArray = Array<Int>(repeating: 0, count:4)
    
    private let mySections: NSArray = ["道北", "道東","十勝","道央","道南"]
    
    @IBOutlet weak var dohokuTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dohokuTableView.delegate = self
        dohokuTableView.dataSource = self
        
        /*
        UserDefaults.standard.register(defaults: ["Dohoku" : Array<Int>(repeating: 0, count:4),
        "Doto" : Array<Int>(repeating: 0, count:5),
        "Tokachi" : Array<Int>(repeating: 0, count:3),
        "Douou" : Array<Int>(repeating: 0, count:4),
        "Donan" : Array<Int>(repeating: 0, count:4)])
 */
        //0:white--4:red
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
           self.navigationController!.navigationBar.shadowImage = UIImage()
        
        navigationController?.isNavigationBarHidden = false
        
        DohokuColorArray = UserDefaults.standard.array(forKey: "Dohoku") as! [Int]
        DotoColorArray = UserDefaults.standard.array(forKey: "Doto") as! [Int]
        TokachiColorArray = UserDefaults.standard.array(forKey: "Tokachi") as! [Int]
        DououColorArray = UserDefaults.standard.array(forKey: "Douou") as! [Int]
        DonanColorArray = UserDefaults.standard.array(forKey: "Donan") as! [Int]
        print("DohokuColorArray : \(DohokuColorArray)")
        
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
            // cellの背景を透過
            cell.backgroundColor = UIColor.clear
             // cell内のcontentViewの背景を透過
            cell.contentView.backgroundColor = UIColor.clear
            
            //colorlabelの初期設定
            regionLabelSetting(label: cell.colorLabel)
            
            
            if indexPath.section == 0 {
                     //  print("indexPath.section == 0")
            
                let label = cell.regionLabel!
                let color = cell.colorLabel!
                
                if DohokuColorArray[indexPath.row] == 0{
                color.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
                }else if DohokuColorArray[indexPath.row] == 1{
                    color.backgroundColor = UIColor.blue.withAlphaComponent(0.5)
                }else if DohokuColorArray[indexPath.row] == 2{
                    color.backgroundColor = UIColor.green.withAlphaComponent(0.5)
                }else if DohokuColorArray[indexPath.row] == 3{
                    color.backgroundColor = UIColor.yellow.withAlphaComponent(0.5)
                }else if DohokuColorArray[indexPath.row] == 4{
                    color.backgroundColor = UIColor.red.withAlphaComponent(0.5)
                }
                       label.text = String(describing: DohokuArray[indexPath.row])
                   }
                   else if indexPath.section == 1 {
                      // print("indexPath.section == 1")
                       let label = cell.regionLabel!
                let color = cell.colorLabel!
                               if DotoColorArray[indexPath.row] == 0{
                               color.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
                               }else if DotoColorArray[indexPath.row] == 1{
                                   color.backgroundColor = UIColor.blue.withAlphaComponent(0.5)
                               }else if DotoColorArray[indexPath.row] == 2{
                                   color.backgroundColor = UIColor.green.withAlphaComponent(0.5)
                               }else if DotoColorArray[indexPath.row] == 3{
                                   color.backgroundColor = UIColor.yellow.withAlphaComponent(0.5)
                               }else if DotoColorArray[indexPath.row] == 4{
                                   color.backgroundColor = UIColor.red.withAlphaComponent(0.5)
                               }
                       label.text = String(describing: DotoArray[indexPath.row])
                   }
                   else if indexPath.section == 2 {
                    //   print("indexPath.section == 2")
                      let label = cell.regionLabel!
                let color = cell.colorLabel!
                               if TokachiColorArray[indexPath.row] == 0{
                               color.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
                               }else if TokachiColorArray[indexPath.row] == 1{
                                   color.backgroundColor = UIColor.blue.withAlphaComponent(0.5)
                               }else if TokachiColorArray[indexPath.row] == 2{
                                   color.backgroundColor = UIColor.green.withAlphaComponent(0.5)
                               }else if TokachiColorArray[indexPath.row] == 3{
                                   color.backgroundColor = UIColor.yellow.withAlphaComponent(0.5)
                               }else if TokachiColorArray[indexPath.row] == 4{
                                   color.backgroundColor = UIColor.red.withAlphaComponent(0.5)
                               }
                      label.text = String(describing: TokachiArray[indexPath.row])
                   }
            else if indexPath.section == 3 {
              //  print("indexPath.section == 3")
               let label = cell.regionLabel!
                let color = cell.colorLabel!
                               if DououColorArray[indexPath.row] == 0{
                               color.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
                               }else if DououColorArray[indexPath.row] == 1{
                                   color.backgroundColor = UIColor.blue.withAlphaComponent(0.5)
                               }else if DououColorArray[indexPath.row] == 2{
                                   color.backgroundColor = UIColor.green.withAlphaComponent(0.5)
                               }else if DououColorArray[indexPath.row] == 3{
                                   color.backgroundColor = UIColor.yellow.withAlphaComponent(0.5)
                               }else if DououColorArray[indexPath.row] == 4{
                                   color.backgroundColor = UIColor.red.withAlphaComponent(0.5)
                               }
               label.text = String(describing: DououArray[indexPath.row])
            }
            else if indexPath.section == 4 {
              //  print("indexPath.section == 4")
               let label = cell.regionLabel!
                let color = cell.colorLabel!
                               if DonanColorArray[indexPath.row] == 0{
                               color.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
                               }else if DonanColorArray[indexPath.row] == 1{
                                   color.backgroundColor = UIColor.blue.withAlphaComponent(0.5)
                               }else if DonanColorArray[indexPath.row] == 2{
                                   color.backgroundColor = UIColor.green.withAlphaComponent(0.5)
                               }else if DonanColorArray[indexPath.row] == 3{
                                   color.backgroundColor = UIColor.yellow.withAlphaComponent(0.5)
                               }else if DonanColorArray[indexPath.row] == 4{
                                   color.backgroundColor = UIColor.red.withAlphaComponent(0.5)
                               }
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
    func regionLabelSetting(label: UILabel){
           label.layer.cornerRadius = 25
           label.clipsToBounds = true
           label.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
       }
    
}
