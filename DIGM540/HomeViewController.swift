//
//  ViewController.swift
//  DIGM540
//
//  Created by Chelsea James on 1/25/21.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    //global vars
    var pNames: [String] = ["Profile","Workout"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        title = "Home"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = pNames[indexPath.row]
        return cell
    }
    
    var selectRowNum:Int = 0
    var selectRowName:String = ""
    
    //select rows
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print ("Row selected \(indexPath.row)")
        //
        selectRowNum = indexPath.row
        selectRowName = pNames[selectRowNum]
        //trigger segue
        performSegue(withIdentifier: "mapLocation", sender: nil)
    }
  
    //delete rows
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == .delete{
            print("Delete row \(indexPath.row)")
            //remove indexed string from pNames array
            pNames.remove(at: indexPath.row)
            //update & rebuild table
            tableView.reloadData()
        }
    }
  
    //segue
}
