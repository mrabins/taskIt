//
//  TaskModel.swift
//  TaskIt
//
//  Created by Mark Rabins on 2/22/15.
//  Copyright (c) 2015 self.swift. All rights reserved.
//

import Foundation
import CoreData

@objc (TaskModel)
class TaskModel: NSManagedObject {

    @NSManaged var completed: NSNumber
    @NSManaged var date: NSDate
    @NSManaged var subtask: String
    @NSManaged var task: String

}
