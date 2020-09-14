//
//  UserModel.swift
//  ShaadiAssignment
//
//  Created by Sanjay Mali on 11/09/20.
//  Copyright © 2020 theappmaker. All rights reserved.
//

import Foundation
struct UserModel:Decodable{
    let id:Int?
    let username:String?
    let name:String?
    let email:String?
    let phone:String?
    let website:String?
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

//{
//  "id": 1,
//  "name": "Leanne Graham",
//  "username": "Bret",
//  "email": "Sincere@april.biz",
//  "address": {
//    "street": "Kulas Light",
//    "suite": "Apt. 556",
//    "city": "Gwenborough",
//    "zipcode": "92998-3874",
//    "geo": {
//      "lat": "-37.3159",
//      "lng": "81.1496"
//    }
//  },
//  "phone": "1-770-736-8031 x56442",
//  "website": "hildegard.org",
//  "company": {
//    "name": "Romaguera-Crona",
//    "catchPhrase": "Multi-layered client-server neural-net",
//    "bs": "harness real-time e-markets"
//  }
//},
