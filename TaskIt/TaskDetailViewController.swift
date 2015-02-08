//
//  TaskDetailViewController.swift
//  TaskIt
//
//  Created by Mark Rabins on 1/28/15.
//  Copyright (c) 2015 self.swift. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {
    
    var detailTaskModel: TaskModel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        println(detailTaskModel.task)
        println(detailTaskModel.subtask)
        println(detailTaskModel.date)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
