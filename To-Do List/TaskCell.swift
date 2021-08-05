//
//  TaskCell.swift
//  To-Do List
//
//  Created by Илья Новиков on 05.08.2021.
//

import UIKit

class TaskCell: UITableViewCell {

    @IBOutlet weak var someCell: UIView!
    @IBOutlet weak var someTask: UILabel!
    weak var removeTaskDelegate: RemoveTaskDelegate?
    weak var executeTaskDelegate: ExecuteTaskDelegate?
    var task: TaskModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    func cellData(task: TaskModel){
        someTask.text = task.taskName
        someCell.backgroundColor = task.taskCellColor
        self.task = task
    }
    
    @IBAction func removeTaskBtnPressed(_ sender: Any) {
        guard let task = task else { return }
        removeTaskDelegate?.removeTask(task: task)
    }
    @IBAction func executeTaskBtnPressed(_ sender: Any) {
        guard let task = task else { return }
        executeTaskDelegate?.executeTask(task: task)
    }
    
}
