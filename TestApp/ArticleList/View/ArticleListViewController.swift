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
    var progressHUD : MBProgressHUD?
    override func viewDidLoad() {
        super.viewDidLoad()

        let articleCell = UINib(nibName: "ArticleTableViewCell", bundle: nil)
        self.articleTableView.register(articleCell, forCellReuseIdentifier: "ArticleCell")
        self.articleTableView.tableFooterView = UIView(frame: .zero)
        self.articleTableView.rowHeight = UITableView.automaticDimension

        GetData()
        
    }

    func GetData() {
        progressHUD?.show(animated: true)
        articleVM.getBlogsList()
        progressHUD?.hide(animated: true)

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
extension ArticleListViewController : ArticleResponse{
    func articleResponseData(AticleDict: [String : Any]) {
        print(AticleDict)
        
    }
    

}


//[
//   {
//       "id": "1",
//       "createdAt": "2020-04-17T12:13:44.575Z",
//       "content": "calculating the program won't do anything, we need to navigate the multi-byte SMS alarm!",
//       "comments": 8237,
//       "likes": 62648,
//       "media": [
//           {
//               "id": "1",
//               "blogId": "1",
//               "createdAt": "2020-04-16T22:43:18.606Z",
//               "image": "https://s3.amazonaws.com/uifaces/faces/twitter/joe_black/128.jpg",
//               "title": "maximized system",
//               "url": "http://providenci.com"
//           }
//       ],
//       "user": [
//           {
//               "id": "1",
//               "blogId": "1",
//               "createdAt": "2020-04-16T20:17:42.437Z",
//               "name": "Dayton",
//               "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/erwanhesry/128.jpg",
//               "lastname": "Haag",
//               "city": "West Ima",
//               "designation": "Human Group Assistant",
//               "about": "Try to calculate the SDD bandwidth, maybe it will override the auxiliary card!"
//           }
//       ]
//   },
//   {
//       "id": "2",
//       "createdAt": "2020-04-16T18:07:46.928Z",
//       "content": "We need to bypass the open-source AI microchip!",
//       "comments": 86439,
//       "likes": 71738,
//       "media": [
//           {
//               "id": "2",
//               "blogId": "2",
//               "createdAt": "2020-04-16T18:12:45.680Z",
//               "image": "https://s3.amazonaws.com/uifaces/faces/twitter/raquelwilson/128.jpg",
//               "title": "UIC-Franc",
//               "url": "https://alexandro.name"
//           }
//       ],
//       "user": [
//           {
//               "id": "2",
//               "blogId": "2",
//               "createdAt": "2020-04-17T00:49:17.794Z",
//               "name": "Marta",
//               "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/ashernatali/128.jpg",
//               "lastname": "Ferry",
//               "city": "West Westonview",
//               "designation": "Central Intranet Developer",
//               "about": "You can't input the application without generating the bluetooth XSS application!"
//           }
//       ]
//   },
//   {
//       "id": "3",
//       "createdAt": "2020-04-16T16:29:21.696Z",
//       "content": "I'll calculate the open-source TCP bandwidth, that should interface the USB capacitor!",
//       "comments": 6790,
//       "likes": 46930,
//       "media": [
//           {
//               "id": "3",
//               "blogId": "3",
//               "createdAt": "2020-04-17T01:29:34.246Z",
//               "image": "https://s3.amazonaws.com/uifaces/faces/twitter/cynthiasavard/128.jpg",
//               "title": "Panama Palau Licensed",
//               "url": "http://elinore.info"
//           }
//       ],
//       "user": [
//           {
//               "id": "3",
//               "blogId": "3",
//               "createdAt": "2020-04-17T04:00:23.195Z",
//               "name": "Litzy",
//               "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/kurtinc/128.jpg",
//               "lastname": "Wehner",
//               "city": "Treview",
//               "designation": "Central Response Planner",
//               "about": "Use the auxiliary AGP application, then you can copy the auxiliary bandwidth!"
//           }
//       ]
//   },
//   {
//       "id": "4",
//       "createdAt": "2020-04-17T06:51:15.145Z",
//       "content": "The XSS bandwidth is down, reboot the primary bus so we can navigate the EXE bus!",
//       "comments": 2868,
//       "likes": 2857,
//       "media": [
//           {
//               "id": "4",
//               "blogId": "4",
//               "createdAt": "2020-04-16T21:20:06.397Z",
//               "image": "https://s3.amazonaws.com/uifaces/faces/twitter/thedjpetersen/128.jpg",
//               "title": "Orchestrator withdrawal",
//               "url": "https://yasmine.info"
//           }
//       ],
//       "user": [
//           {
//               "id": "4",
//               "blogId": "4",
//               "createdAt": "2020-04-17T13:13:07.019Z",
//               "name": "Dewayne",
//               "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/plbabin/128.jpg",
//               "lastname": "Christiansen",
//               "city": "Skilesville",
//               "designation": "Corporate Metrics Manager",
//               "about": "parsing the capacitor won't do anything, we need to calculate the solid state RSS application!"
//           }
//       ]
//   },
//   {
//       "id": "5",
//       "createdAt": "2020-04-17T10:54:59.967Z",
//       "content": "You can't copy the card without hacking the digital XML panel!",
//       "comments": 89330,
//       "likes": 63733,
//       "media": [
//           {
//               "id": "5",
//               "blogId": "5",
//               "createdAt": "2020-04-17T01:39:03.511Z",
//               "image": "https://s3.amazonaws.com/uifaces/faces/twitter/wim1k/128.jpg",
//               "title": "Course deposit",
//               "url": "http://tillman.com"
//           }
//       ],
//       "user": [
//           {
//               "id": "5",
//               "blogId": "5",
//               "createdAt": "2020-04-17T01:49:36.944Z",
//               "name": "Meaghan",
//               "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/sebashton/128.jpg",
//               "lastname": "Runolfsson",
//               "city": "Flossieton",
//               "designation": "Legacy Division Coordinator",
//               "about": "The JSON protocol is down, hack the wireless monitor so we can input the PCI hard drive!"
//           }
//       ]
//   },
//   {
//       "id": "6",
//       "createdAt": "2020-04-17T04:25:36.035Z",
//       "content": "Use the wireless XSS feed, then you can quantify the bluetooth microchip!",
//       "comments": 18454,
//       "likes": 38359,
//       "media": [
//           {
//               "id": "6",
//               "blogId": "6",
//               "createdAt": "2020-04-17T01:30:57.213Z",
//               "image": "https://s3.amazonaws.com/uifaces/faces/twitter/haruintesettden/128.jpg",
//               "title": "Books calculate",
//               "url": "http://dallas.org"
//           }
//       ],
//       "user": [
//           {
//               "id": "6",
//               "blogId": "6",
//               "createdAt": "2020-04-17T05:44:11.044Z",
//               "name": "Francisca",
//               "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/cloudstudio/128.jpg",
//               "lastname": "Cronin",
//               "city": "West Jordi",
//               "designation": "Forward Data Liaison",
//               "about": "indexing the protocol won't do anything, we need to copy the primary AGP circuit!"
//           }
//       ]
//   },
//   {
//       "id": "7",
//       "createdAt": "2020-04-17T00:17:59.725Z",
//       "content": "If we navigate the bus, we can get to the AGP card through the bluetooth EXE monitor!",
//       "comments": 38422,
//       "likes": 12866,
//       "media": [
//           {
//               "id": "7",
//               "blogId": "7",
//               "createdAt": "2020-04-17T13:42:08.997Z",
//               "image": "https://s3.amazonaws.com/uifaces/faces/twitter/thimo_cz/128.jpg",
//               "title": "service-desk payment relationships",
//               "url": "https://trycia.net"
//           }
//       ],
//       "user": [
//           {
//               "id": "7",
//               "blogId": "7",
//               "createdAt": "2020-04-17T01:16:19.750Z",
//               "name": "Tyler",
//               "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/iamgarth/128.jpg",
//               "lastname": "Hauck",
//               "city": "Port Ransom",
//               "designation": "Dynamic Brand Orchestrator",
//               "about": "Try to override the SMTP capacitor, maybe it will back up the wireless feed!"
//           }
//       ]
//   },
//   {
//       "id": "8",
//       "createdAt": "2020-04-17T02:25:55.155Z",
//       "content": "We need to compress the auxiliary JBOD circuit!",
//       "comments": 29770,
//       "likes": 30931,
//       "media": [
//           {
//               "id": "8",
//               "blogId": "8",
//               "createdAt": "2020-04-17T10:07:44.460Z",
//               "image": "https://s3.amazonaws.com/uifaces/faces/twitter/dansowter/128.jpg",
//               "title": "Pizza",
//               "url": "http://jarrod.net"
//           }
//       ],
//       "user": [
//           {
//               "id": "8",
//               "blogId": "8",
//               "createdAt": "2020-04-17T10:52:56.199Z",
//               "name": "Nat",
//               "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/lingeswaran/128.jpg",
//               "lastname": "Monahan",
//               "city": "East Adelbert",
//               "designation": "Dynamic Integration Executive",
//               "about": "I'll connect the digital EXE hard drive, that should microchip the SCSI matrix!"
//           }
//       ]
//   },
//   {
//       "id": "9",
//       "createdAt": "2020-04-17T09:16:41.321Z",
//       "content": "You can't program the monitor without overriding the mobile SCSI monitor!",
//       "comments": 25994,
//       "likes": 32722,
//       "media": [
//           {
//               "id": "9",
//               "blogId": "9",
//               "createdAt": "2020-04-16T22:24:17.302Z",
//               "image": "https://s3.amazonaws.com/uifaces/faces/twitter/olgary/128.jpg",
//               "title": "Bedfordshire backing up copying",
//               "url": "http://hillard.name"
//           }
//       ],
//       "user": [
//           {
//               "id": "9",
//               "blogId": "9",
//               "createdAt": "2020-04-16T19:37:50.130Z",
//               "name": "Ferne",
//               "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/donjain/128.jpg",
//               "lastname": "Powlowski",
//               "city": "Swiftberg",
//               "designation": "Dynamic Data Assistant",
//               "about": "Use the haptic GB program, then you can reboot the neural protocol!"
//           }
//       ]
//   },
//   {
//       "id": "10",
//       "createdAt": "2020-04-17T09:46:47.375Z",
//       "content": "If we navigate the hard drive, we can get to the SSL feed through the neural GB panel!",
//       "comments": 51498,
//       "likes": 97068,
//       "media": [
//           {
//               "id": "10",
//               "blogId": "10",
//               "createdAt": "2020-04-17T01:45:06.965Z",
//               "image": "https://s3.amazonaws.com/uifaces/faces/twitter/sircalebgrove/128.jpg",
//               "title": "Music orchestration",
//               "url": "https://isabell.net"
//           }
//       ],
//       "user": [
//           {
//               "id": "10",
//               "blogId": "10",
//               "createdAt": "2020-04-16T21:13:15.203Z",
//               "name": "Ryann",
//               "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/davidhemphill/128.jpg",
//               "lastname": "Rohan",
//               "city": "Tiaraport",
//               "designation": "Chief Interactions Producer",
//               "about": "If we input the firewall, we can get to the AI sensor through the redundant PNG bus!"
//           }
//       ]
//   }
//]
