//
//  SecondViewController.swift
//  RealmSample
//
//  Created by Satoshi Komatsu on 2018/06/20.
//  Copyright © 2018年 Satoshi Komatsu. All rights reserved.
//

import UIKit
import RealmSwift

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var pic: UIImageView!
    
    let realm = try! Realm()
    var gradesDataArray: Results<Grades>!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        gradesDataArray = realm.objects(Grades.self)
        
        nameLabel.text = gradesDataArray[0].name
        scoreLabel.text = String(gradesDataArray[0].score)
        gradeLabel.text = gradesDataArray[0].grade
        let imageBox = UIImage(data: gradesDataArray[0].image)
        pic.image = imageBox
        
        print("here2")
    }
}
