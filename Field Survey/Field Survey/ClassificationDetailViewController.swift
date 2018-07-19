//
//  ClassificationDetailViewController.swift
//  Field Survey
//
//  Created by 赵益 on 7/19/18.
//  Copyright © 2018 Yi Zhao. All rights reserved.
//

import UIKit

class ClassificationDetailViewController: UIViewController {
  
    var classification: Classification?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var speciesIconImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        self.title = "Observation"
        
        speciesIconImageView.image = classification?.classification.image
        descriptionLabel.text = classification?.description
        titleLabel.text = classification?.title
       
        if let date = classification?.date {
            dateLabel.text = dateFormatter.string(from: date)
        }else {
            dateLabel.text = ""
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
