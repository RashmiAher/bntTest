//
//  UserTableViewCell.swift
//  TestApp
//
//  Created by Rashmi on 10/21/20.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var designationLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var userImgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
