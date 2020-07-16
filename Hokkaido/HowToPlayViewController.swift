//
//  HowToPlayViewController.swift
//  Hokkaido
//
//  Created by takumi on 2020/07/16.
//  Copyright © 2020 TakumiKato. All rights reserved.
//

import UIKit

class HowToPlayViewController: UIViewController {
    
     var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //imageView作成
               self.imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
               //中央寄せ
               self.imageView.center = self.view.center
               //画像を設定
               self.imageView.image = UIImage(named: "hrog")
               //viewに追加
               self.view.addSubview(self.imageView)
    }
    

   

}
