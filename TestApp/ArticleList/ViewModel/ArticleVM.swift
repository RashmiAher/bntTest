//
//  ArticleVM.swift
//  TestApp
//
//  Created by Rashmi on 10/21/20.
//

import Foundation
import UIKit
import Alamofire

class ArticleVM: NSObject{
    
    func getBlogsList() {
        let url = URL(string: "https://5e99a9b1bc561b0016af3540.mockapi.io/jet2/api/v1/blogs?page=1&limit=10")!
        AF.request(url as URL, method: .get, parameters: nil, encoding: JSONEncoding.default).responseJSON{ response in
            switch response.result {
            case .success(let value):
                print(value)

                let result = value as? [Any]
                print(result)
                let result2 = value as? [String:Any]
                print(result2)


            case .failure(let error):
                print(error)
                
            }
        }
    }
    
    
    
    
}
