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
    var selectedToDo = TasksToDo()
    
    @IBOutlet weak var taskTitleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskTitleLabel.text = selectedToDo.name
    }
    
    @IBAction func doneTapped(_ sender: Any) {
//       when clicked, show task w/ badge on table view controller

    }
    
    
}
