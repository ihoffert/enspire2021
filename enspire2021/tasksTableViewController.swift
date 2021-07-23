//
//  tasksTableViewController.swift
//  enspire2021
//
//  Created by Ingrid Hoffert on 7/21/21.
//  Copyright © 2021 Ingrid Hoffert. All rights reserved.
//

import UIKit

class tasksTableViewController: UITableViewController {

    var toDos : [TasksToDo] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toDos = createToDos()
    }
    
    func createToDos() -> [TasksToDo] {
//        water wizard
        let wWizard1 = TasksToDo()
        wWizard1.name = "get a metal water bottle"
        wWizard1.badge = "💧"
        
        let wWizard2 = TasksToDo()
        wWizard2.name = "opt for drinking fountains"
        wWizard2.badge = "💧"
        
        let wWizard3 = TasksToDo()
        wWizard3.name = "take shorter showers"
        wWizard3.badge = "💧"
        
//        first steps
        let fSteps1 = TasksToDo()
        fSteps1.name = "sign a petition"
        fSteps1.badge = "👟"
        
        let fSteps2 = TasksToDo()
        fSteps2.name = "visit a website from the actions page"
        fSteps2.badge = "👟"

//       unplastic
        let unPlastic1 = TasksToDo()
        unPlastic1.name = "buy/bring a reusable bag with you"
        unPlastic1.badge = "🥤"
        
        let unPlastic2 = TasksToDo()
        unPlastic2.name = "create a DIY reusable utensils kit"
        unPlastic2.badge = "🥤"
        
        let unPlastic3 = TasksToDo()
        unPlastic3.name = "say no to plastic straws"
        unPlastic3.badge = "🥤"
        
//        active activist
        let activist1 = TasksToDo()
        activist1.name = "go to a protest/environmental action event"
        activist1.badge = "📢"
        
        let activist2 = TasksToDo()
        activist2.name = "go to a river/park/beach cleanup"
        activist2.badge = "📢"
        
//        enthusiastic educator
        let educator1 = TasksToDo()
        educator1.name = "talk to a parent about going green"
        educator1.badge = "📚"
        
        let educator2 = TasksToDo()
        educator2.name = "create/join an environmental club at school"
        educator2.badge = "📚"
        
        let educator3 = TasksToDo()
        educator3.name = "encourage compost & recycling at home"
        educator3.badge = "📚"
        
//        focused foodie
        let foodie1 = TasksToDo()
        foodie1.name = "try to eat less red meat when you go out"
        foodie1.badge = "🍽"
        
        let foodie2 = TasksToDo()
        foodie2.name = "avoid buying food from vending machines"
        foodie2.badge = "🍽"
        
        let foodie3 = TasksToDo()
        foodie3.name = "visit a store which sells unpackaged food"
        foodie3.badge = "🍽"
        
//        reuser
        let reuser1 = TasksToDo()
        reuser1.name = "old clothes swap w/ friends"
        reuser1.badge = "♻️"
        
        let reuser2 = TasksToDo()
        reuser2.name = "shop at thrift stores"
        reuser2.badge = "♻️"
        

      return [wWizard1, wWizard2, wWizard3, fSteps1, fSteps2, unPlastic1, unPlastic2, unPlastic3, activist1, activist2, educator1, educator2, educator3, foodie1, foodie2, foodie3, reuser1, reuser2]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let toDo = toDos[indexPath.row]

        if toDo.completed == true {
            cell.textLabel?.text = toDo.badge + " " + toDo.name
        } else {
            cell.textLabel?.text = toDo.name
        }
        
        return cell
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let completeVC = segue.destination as? completeTasksViewController {
        if let toDo = sender as? TasksToDo {
            completeVC.selectedToDo = toDo
            completeVC.previousVC = self
        }
      }
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

      let toDo = toDos[indexPath.row]

      performSegue(withIdentifier: "moveToComplete", sender: toDo)
    }

}

