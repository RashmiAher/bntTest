//
//  ArticleListViewController.swift
//  TestApp
//
//  Created by Rashmi on 10/21/20.
//

import UIKit
import MBProgressHUD

class ArticleListViewController: UIViewController {
    @IBOutlet var articleTableView: UITableView!
    var articleVM = ArticleVM()
    var ProgressHUD : MBProgressHUD?
    override func viewDidLoad() {
        super.viewDidLoad()

        let articleCell = UINib(nibName: "ArticleTableViewCell", bundle: nil)
        self.articleTableView.register(articleCell, forCellReuseIdentifier: "ArticleCell")
        self.articleTableView.tableFooterView = UIView(frame: .zero)
        self.articleTableView.rowHeight = UITableView.automaticDimension

        GetData()
        
    }

    func GetData() {
        ProgressHUD = MBProgressHUD.showAdded(to: self.view, animated: true)
        articleVM.getBlogsList()
    }



}
extension ArticleListViewController : UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleCell") as! ArticleTableViewCell
       
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        cell.contentView.layer.masksToBounds  = true
        cell.layer.cornerRadius = 6
      
//        let url = URL(string: imageArray[indexPath.row])!
//        let data = try? Data(contentsOf: url)
//        if let imageData = data {
//            cell.previewImgView.image = UIImage(data: imageData)
//        }
//        cell.videoTitleLbl.text = nameArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
    }
}
