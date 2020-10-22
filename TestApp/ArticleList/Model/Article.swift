//
//  Article.swift
//  TestApp
//
//  Created by Rashmi on 10/21/20.
//

import Foundation
import UIKit

struct Article {
    var id:String?
    var createdAt:String?
    var content:String?
    var likes:String?
    var comments:String?
    var media = Media()
    var user = User()

}

struct Media {
    var id:String?
    var createdAt:String?
    var blogId:String?
    var image:String?
    var title:String?
    var url:String?

}

struct User {
    var id:String?
    var createdAt:String?
    var blogId:String?
    var avatar:String?
    var name:String?
    var lastname:String?
    var city:String?
    var designation:String?
    var about:String?


}
class ArticleInfo : NSObject {
    
    static let shared = ArticleInfo()
    

}
class Common: NSObject {
    
    class func showAlertView(title:String,strMessage:String,controller:UIViewController){
        let alertMessage = UIAlertController(title:title, message: strMessage, preferredStyle: UIAlertController.Style.alert)
        alertMessage.addAction(UIAlertAction(title:"OK", style: UIAlertAction.Style.cancel, handler: nil))
        controller.present(alertMessage, animated: true, completion: nil)
    }
}



//{
//    "id": "1",
//    "createdAt": "2020-04-17T12:13:44.575Z",
//    "content": "calculating the program won't do anything, we need to navigate the multi-byte SMS alarm!",
//    "comments": 8237,
//    "likes": 62648,
//    "media": [
//        {
//            "id": "1",
//            "blogId": "1",
//            "createdAt": "2020-04-16T22:43:18.606Z",
//            "image": "https://s3.amazonaws.com/uifaces/faces/twitter/joe_black/128.jpg",
//            "title": "maximized system",
//            "url": "http://providenci.com"
//        }
//    ],
//    "user": [
//        {
//            "id": "1",
//            "blogId": "1",
//            "createdAt": "2020-04-16T20:17:42.437Z",
//            "name": "Dayton",
//            "avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/erwanhesry/128.jpg",
//            "lastname": "Haag",
//            "city": "West Ima",
//            "designation": "Human Group Assistant",
//            "about": "Try to calculate the SDD bandwidth, maybe it will override the auxiliary card!"
//        }
//    ]
//}
