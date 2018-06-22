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
        
        let url = URL(string: "https://cover.openbd.jp/9784091898494.jpg")
        let imageData = try?Data(contentsOf: url!)
        
        data.name = "Satoshi"
        data.score = 80
        data.grade = "B"
        data.image = imageData!
        
        try! realm.write{
            realm.add(data)
        }
    
        let folderPath = realm.configuration.fileURL!.deletingLastPathComponent().path
        
//        print(Realm.Configuration.defaultConfiguration.fileURL!)
        print(folderPath)
    }
    
    @IBAction func addRealm() {
        try! realm.write{
            realm.add(data)
        }
    }


}

