//
//  Species.swift
//  Field Survey
//
//  Created by 赵益 on 7/18/18.
//  Copyright © 2018 Yi Zhao. All rights reserved.
//

import UIKit

enum Species: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage (named: self.rawValue + "Icon")
    }
    
}
