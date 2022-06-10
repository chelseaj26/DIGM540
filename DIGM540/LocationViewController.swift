//
//  LocationViewController.swift
//  DIGM540
//
//  Created by Chelsea James on 3/11/21.
//

import UIKit

class LocationViewController: UIViewController {

    @IBOutlet weak var locationLbl: UILabel!
    var incomingName:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        locationLbl.text = incomingName?.uppercased()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
