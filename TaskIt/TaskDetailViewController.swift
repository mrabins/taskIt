//
//  TaskDetailViewController.swift
//  TaskIt
//
//  Created by Mark Rabins on 1/28/15.
//  Copyright (c) 2015 self.swift. All rights reserved.
//

import UIKit

@objc protocol TaskDetailViewControllerDelegate {
    optional func taskDetailEdited ()
    
}

class TaskDetailViewController: UIViewController {
    
    var detailTaskModel: TaskModel!
        
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var subtaskTextField: UITextField!
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    
    var delegate: TaskDetailViewControllerDelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor(patternImage: UIImage (named: "Background")!)

       
        self.taskTextField.text = detailTaskModel.task
        self.subtaskTextField.text = detailTaskModel.subtask
        self.dueDatePicker.date = detailTaskModel.date
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButtonTapped(sender: UIBarButtonItem) {
        self.navigationController?.popToRootViewControllerAnimated(true)
       
    }
    
    @IBAction func doneBarButtonItemPressed (sender: UIBarButtonItem) {
        
        detailTaskModel.task = taskTextField.text
        detailTaskModel.subtask = subtaskTextField.text
        detailTaskModel.date = dueDatePicker.date
        detailTaskModel.completed = detailTaskModel.completed
        
        
      ModelManager.instance.saveContext()
        
        
       self.navigationController?.popViewControllerAnimated(true)
        delegate?.taskDetailEdited!()
    }

}
