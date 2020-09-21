//
//  UserModel.swift
//  ShaadiAssignment
//
//  Created by Sanjay Mali on 11/09/20.
//  Copyright © 2020 theappmaker. All rights reserved.
//

import Foundation
struct UserModel:Decodable{
    let id:Int
    let username:String
    let name:String
    let email:String
    let phone:String
    let website:String
    let address:Address?
    let company:Company?
}
struct Address:Codable{
    let street:String?
    let suite:String?
    let city:String?
    let zipcode:String?
}

struct Company:Codable{
    let catchPhrase:String?
    let name:String?
    let bs:String?
}
