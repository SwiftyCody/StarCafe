//
//  User.swift
//  StarCafe
//
//  Created by solgoon on 2023/01/26.
//

import Foundation

struct User {
    let userName: String
    let account: String
    
    static let shared = User(userName: "Cody", account: "swifty.cody")
}
