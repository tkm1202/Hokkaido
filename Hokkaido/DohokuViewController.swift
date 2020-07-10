//
//  DohokuViewController.swift
//  Hokkaido
//
//  Created by 加藤拓洋 on 2020/06/09.
//  Copyright © 2020 TakumiKato. All rights reserved.
//

import UIKit
 
class DohokuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    let textArray = ["稚内","名寄","留萌","小樽","久遠","函館","室蘭","札幌","苫小牧","襟裳","帯広","旭川","",""]
    private let mySections: NSArray = ["道北", "道東","十勝","道央","道南"]
    
    @IBOutlet weak var dohokuTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dohokuTableView.delegate = self
        dohokuTableView.dataSource = self
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
        
        let nextVC = storyboard?.instantiateViewController(identifier: "toNextDohoku") as! NextDohokuViewController
        
        nextVC.cityString = textArray[indexPath.row]
        navigationController?.pushViewController(nextVC, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textArray.count
       }

       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = dohokuTableView.dequeueReusableCell(withIdentifier: "DohokuCell", for: indexPath)
        cell.textLabel?.text = textArray[indexPath.row]
        //cell.imageView?.image = UIImage(named: "checkImage")
           return cell
       }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height/10
    }
    
}
