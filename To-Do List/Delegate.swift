//
//  Delegate.swift
//  To-Do List
//
//  Created by Илья Новиков on 05.08.2021.
//

import Foundation


protocol SaveUserTaskDelegate: AnyObject {
    func saveTask(task: TaskModel)
}

protocol RemoveTaskDelegate: AnyObject {
    func removeTask(task: TaskModel)
}

protocol ExecuteTaskDelegate: AnyObject {
    func executeTask(task: TaskModel)
}
