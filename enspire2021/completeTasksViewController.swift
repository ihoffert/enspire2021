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
                subtextChange.text = "Water Wizard 💧"
            } else if whichBadge == "👟" {
                subtextChange.text = "First Steps 👟"
            } else if whichBadge == "🥤" {
                subtextChange.text = "Unplastic 🥤"
            } else if whichBadge == "📢" {
                subtextChange.text = "Active Activist 📢"
            } else if whichBadge == "📚" {
                subtextChange.text = "Enthusiastic Educator 📚"
            } else if whichBadge == "🍽" {
                subtextChange.text = "Focused Foodie 🍽"
            } else if whichBadge == "♻️" {
                subtextChange.text = "Reuser ♻️"
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
