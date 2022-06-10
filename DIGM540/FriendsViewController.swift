//
//  FriendsViewController.swift
//  DIGM540
//
//  Created by Chelsea James on 6/4/22.
//

import UIKit

class FriendsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    //Global Vars
    var fNames: [String] = ["Walking", "Jogging", "Running", "Cycling", "Climbing"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //Nav BAr Title
        title = "All Workouts"

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fNames.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"Cell", for: indexPath)
        cell.textLabel?.text = fNames[indexPath.row]
        return cell
    }
    
    var selRowNum:Int = 0
    var selRowName:String = ""
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("Row selected \(indexPath.row)")
        //
        selRowNum = indexPath.row
        selRowName = fNames[selRowNum]
        
        //trigger segue
       performSegue(withIdentifier: "showContact", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == .delete{
            print("Delete row \(indexPath.row)")
            //Remove indexed string from fNames array
            fNames.remove(at: indexPath.row)
            //Update & rebuild table
            tableView.reloadData()
        }
    }
    
    @IBAction func addName(_ sender: Any) {
        let alertObj = UIAlertController(title: "New Workout?" , message: "Add a new name for workout", preferredStyle: .alert)
        alertObj.view.tintColor = UIColor.init(named: "AccentColor")
        let saveAction = UIAlertAction(title: "Save", style: .default){
            [unowned self] action in
            guard let textField = alertObj.textFields?.first,
                  let nameToSave = textField.text else{
                return
            }
            self.fNames.append(nameToSave)
            self.tableView.reloadData()
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        //
        alertObj.addTextField()
        //
        alertObj.addAction(saveAction)
        alertObj.addAction(cancelAction)
        //
        present(alertObj, animated: true)
    }
  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation*/

    }


