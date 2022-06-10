//
//  MapViewController.swift
//  DIGM540
//
//  Created by Chelsea James on 3/16/22.
//

import UIKit

class MapViewController: UIViewController {

    var ndxNum:Int?
    var incomingPlace:String?
    
   
    @IBOutlet weak var bigName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bigName.text = incomingPlace?.uppercased()
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
