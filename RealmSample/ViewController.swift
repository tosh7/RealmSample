//
//  ViewController.swift
//  RealmSample
//
//  Created by Satoshi Komatsu on 2018/06/16.
//  Copyright © 2018年 Satoshi Komatsu. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    let realm = try! Realm()
    let data = Grades()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        data.name = "Tosh"
        data.score = 100
        data.grade = "A"
        
//        try! realm.write 
//            realm.add(data)
//        }
        let folderPath = realm.configuration.fileURL!.deletingLastPathComponent().path
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        print(folderPath)
    }


}

