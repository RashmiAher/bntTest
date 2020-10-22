//
//  UserListViewController.swift
//  TestApp
//
//  Created by Rashmi on 10/21/20.
//

import UIKit
import MBProgressHUD

class UserListViewController: UIViewController {
    @IBOutlet var userTableView: UITableView!
    var userVM = UserListVM()
    var progressHUD : MBProgressHUD?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let userCell = UINib(nibName: "UserTableViewCell", bundle: nil)
        self.userTableView.register(userCell, forCellReuseIdentifier: "UserCell")
        self.userTableView.tableFooterView = UIView(frame: .zero)
        self.userTableView.rowHeight = UITableView.automaticDimension

        GetData()
        
    }

    func GetData() {
        progressHUD?.show(animated: true)
        userVM.getUserList()
        progressHUD?.hide(animated: true)

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
