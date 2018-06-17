//
//  Grades.swift
//  RealmSample
//
//  Created by Satoshi Komatsu on 2018/06/17.
//  Copyright © 2018年 Satoshi Komatsu. All rights reserved.
//

import UIKit
import RealmSwift

class Grades: Object {

    @objc dynamic var name = ""
    @objc dynamic var score = 0
    @objc dynamic var grade = ""
    
}
