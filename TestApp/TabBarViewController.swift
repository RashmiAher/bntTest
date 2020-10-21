//
//  TabBarViewController.swift
//  TestApp
//
//  Created by Rashmi on 10/21/20.
//

import UIKit

class TabBarViewController: UITabBarController {
    let articleView = ArticleListViewController()
    let userView = UserListViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        articleView.tabBarItem = UITabBarItem(title: "Articles", image: UIImage(systemName: "chart.bar.doc.horizontal"), tag: 0)
//        articleView.tabBarItem.imageInsets = UIEdgeInsets(top: 25, left: 15, bottom: 15, right: 20)
//
//        articleView.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 15.0)
        let articlePage = UINavigationController(rootViewController: articleView)
        articlePage.navigationBar.isTranslucent = false
        articlePage.navigationBar.isHidden = true;

        userView.tabBarItem = UITabBarItem(title: "Users", image: UIImage(systemName: "person.fill"), tag: 1)
//        userView.tabBarItem.imageInsets = UIEdgeInsets(top: 25, left: 15, bottom: 15, right: 20)
//        userView.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: 15.0)
        let usersPage = UINavigationController(rootViewController: userView)
        usersPage.navigationBar.isTranslucent = false
        usersPage.navigationBar.isHidden = true;
        print("Hello")
        
        
        self.viewControllers = [articlePage,usersPage]
        self.selectedIndex = 0
        tabBar.tintColor = .red
        tabBar.unselectedItemTintColor = .green
        tabBar.barTintColor = .blue
        
        
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
