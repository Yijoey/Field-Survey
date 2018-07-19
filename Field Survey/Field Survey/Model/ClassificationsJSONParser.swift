//
//  ClassificationsJSONParser.swift
//  Field Survey
//
//  Created by 赵益 on 7/19/18.
//  Copyright © 2018 Yi Zhao. All rights reserved.
//

import Foundation
class ClassificationsJSONParser {
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [Classification] {
        var classifications = [Classification]()
        
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String ,
            status == "ok"{
            
            if let observations = root["observations"] as? [Any] {
                for observation in observations{
                    if let observation = observation as? [String:String]  {
                        if let speciesName = observation["classification"],
                            let title = observation["title"],
                            let description = observation["description"],
                            let dateString = observation["date"],
                            let date = dateFormatter.date (from: dateString) {
                            
                            if let classification = Classification(SpeciesName: speciesName, title: title, description: description, date: date){
                                classifications.append(classification)
                                
                            }
                        }
                    }
                }
            }
            
            
        }
        
        
        return classifications
    }
    
}
