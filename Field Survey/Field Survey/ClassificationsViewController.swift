//
//  ClassificationsViewController.swift
//  Field Survey
//
//  Created by 赵益 on 7/19/18.
//  Copyright © 2018 Yi Zhao. All rights reserved.
//

import UIKit

class ClassificationsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var classificationTableView: UITableView!
   
    let classifications = ClassificationsJSONLoader.load(fileName: "Field Survey")
    
    let dateFormatter = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        self.title = "Field Survey"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classifications.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "classificationCell", for: indexPath)
        if let cell = cell as? ClassificationTableViewCell {
            let classification = classifications[indexPath.row]
            cell.speciesIconImageView.image = classification.classification.image
            cell.titleLabel.text = classification.title
            cell.dateLabel.text = dateFormatter.string(from: classification.date)
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ClassificationDetailViewController,
            let row = classificationTableView.indexPathForSelectedRow?.row {
            destination.classification = classifications[row]
        }
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
