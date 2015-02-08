//
//  TaskCell.swift
//  TaskIt
//
//  Created by Mark Rabins on 1/22/15.
//  Copyright (c) 2015 self.swift. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {
    
    
    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
