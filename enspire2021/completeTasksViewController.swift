//
//  completeTasksViewController.swift
//  enspire2021
//
//  Created by Ingrid Hoffert on 7/21/21.
//  Copyright © 2021 Ingrid Hoffert. All rights reserved.
//

import UIKit

class completeTasksViewController: UIViewController {

    var previousVC = tasksTableViewController()
    var selectedToDo : TasksToDo?
    
    
    @IBOutlet weak var taskTitleLabel: UILabel!
    @IBOutlet weak var subtextChange: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskTitleLabel.text = selectedToDo?.name
        
        if let whichBadge = selectedToDo?.badge {
            if whichBadge == "💧" {
                subtextChange.text = "water wizard 💧"
                subtextChange.textColor = UIColor(red: 0.31, green: 0.54, blue: 0.77, alpha: 1.0)
            } else if whichBadge == "👟" {
                subtextChange.text = "first steps 👟"
                subtextChange.textColor = UIColor(red: 0.75, green: 0.75, blue: 0.75, alpha: 1.0)
            } else if whichBadge == "🥤" {
                subtextChange.text = "unplastic 🥤"
                subtextChange.textColor = UIColor(red: 0.91, green: 0.30, blue: 0.31, alpha: 1.0)
            } else if whichBadge == "📢" {
                subtextChange.text = "active activist 📢"
                subtextChange.textColor = UIColor(red: 0.75, green: 0.75, blue: 0.75, alpha: 1.0)
            } else if whichBadge == "📚" {
                subtextChange.text = "enthusiastic educator 📚"
                subtextChange.textColor = UIColor(red: 0.47, green: 0.72, blue: 0.37, alpha: 1.0)
            } else if whichBadge == "🍽" {
                subtextChange.text = "focused foodie 🍽"
                subtextChange.textColor = UIColor(red: 0.75, green: 0.75, blue: 0.75, alpha: 1.0)
            } else if whichBadge == "♻️" {
                subtextChange.text = "reuser ♻️"
                subtextChange.textColor = UIColor(red: 0.39, green: 0.81, blue: 0.17, alpha: 1.0)
            }
        }
    }
    
    @IBAction func taskIsDoneSwitch(_ sender: Any) {
        
//        let toDo = TasksToDo()
        
//        completed --> true
//        if true then add task.badge + "" + task.name
        let index = previousVC.toDos.firstIndex(of: selectedToDo!)!
        
        selectedToDo!.completed = true
        
        previousVC.toDos.append(selectedToDo!)
        previousVC.toDos.remove(at: index)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
        
    }
    
    
    
    
    
//    previousVC.toDos.insert(selectedToDo, at: index)
    
}
