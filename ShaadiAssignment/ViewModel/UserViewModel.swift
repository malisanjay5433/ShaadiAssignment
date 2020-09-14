//
//  UserViewModel.swift
//  ShaadiAssignment
//
//  Created by Sanjay Mali on 11/09/20.
//  Copyright © 2020 theappmaker. All rights reserved.
//

import Foundation
import UIKit
class UserViewModel{
    var allUsers = [UserModel]()
    weak var vc : ViewController?
    func getAllUser(){
        URLSession.shared.dataTask(with:URL(string:"https://jsonplaceholder.typicode.com/users")!) { (data,response,error) in
            if error == nil{
                if let data = data{
                    do{
                        let response = try JSONDecoder().decode([UserModel].self, from:data)
                        print(response);
                        self.allUsers.append(contentsOf:response)
                        DispatchQueue.main.async {
                            self.vc?.tableView.reloadData()
                        }                    }catch let error{
                        print(error.localizedDescription)
                    }
                }
            }else{
                print(error?.localizedDescription)
            }
        }.resume()
    }
}
