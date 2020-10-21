//
//  ArticleTableViewCell.swift
//  TestApp
//
//  Created by Rashmi on 10/21/20.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {
    @IBOutlet weak var userImgView: UIImageView!
    @IBOutlet weak var articleImgView: UIImageView!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var urlLbl: UILabel!
    
    @IBOutlet weak var commemntsLbl: UILabel!
    @IBOutlet weak var likesLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    @IBOutlet weak var designationLbl: UILabel!
    @IBOutlet weak var userNameLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
