//
//  TaskVC.swift
//  To-Do List
//
//  Created by Илья Новиков on 05.08.2021.
//

import UIKit

class TaskVC: UIViewController {
    weak var saveTaskDelegate: SaveUserTaskDelegate?
   

    @IBOutlet weak var userTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
   
    @IBAction func saveTaskBtnPressed(_ sender: Any) {
        if let task = userTextField.text {
            if !task.isEmpty {
                let task = TaskModel(taskName: task, taskCellColor: .white)
                saveTaskDelegate?.saveTask(task: task)
                dismiss(animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func showTaskList(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
