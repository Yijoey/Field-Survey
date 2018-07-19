//
//  Classification.swift
//  Field Survey
//
//  Created by 赵益 on 7/18/18.
//  Copyright © 2018 Yi Zhao. All rights reserved.
//

import Foundation
struct Classification {
    let classification: Species
    let title: String
    let description: String
    let date: Date
    
    init(classification:Species,title:String,description:String,date:Date){
        self.classification = classification
        self.title = title
        self.description = description
        self.date = date
    }
    init?(SpeciesName:String,title:String,description:String,date:Date){
        if let classification = Species(rawValue: SpeciesName) {
            self.init(classification: classification, title: title, description: description, date: date)
        } else {
            return nil
        }
    }
}
