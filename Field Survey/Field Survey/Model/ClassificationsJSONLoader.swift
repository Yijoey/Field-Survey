//
//  ClassificationsJSONLoader.swift
//  Field Survey
//
//  Created by 赵益 on 7/19/18.
//  Copyright © 2018 Yi Zhao. All rights reserved.
//

import Foundation

class ClassificationsJSONLoader {
    class func load (fileName : String )-> [Classification] {
        var species = [Classification]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json") ,
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            species  = ClassificationsJSONParser.parse(data)
        }
        return species
    }
}
