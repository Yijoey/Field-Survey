//
//  ClassificationTableViewCell.swift
//  Field Survey
//
//  Created by 赵益 on 7/19/18.
//  Copyright © 2018 Yi Zhao. All rights reserved.
//

import UIKit

class ClassificationTableViewCell: UITableViewCell {

    @IBOutlet weak var speciesIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
