//
//  ContactTVC.swift
//  DIGM540
//
//  Created by Chelsea James on 3/9/21.
//

import UIKit

class ContactTVC: UITableViewCell {

    @IBOutlet weak var contactView: UIView!
    @IBOutlet weak var contactImgView: UIImageView!
    @IBOutlet weak var contactLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
