//
//  CoffeeMenu.swift
//  StarCafe
//
//  Created by solgoon on 2023/01/25.
//

import SwiftUI

struct CoffeeMenu: Identifiable {
    let image: Image
    let name: String
    let id = UUID()
    
    static let sample: [CoffeeMenu] = [
        CoffeeMenu(image: Image("coffee"), name: "아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "카페라떼"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 카페라떼"),
        CoffeeMenu(image: Image("coffee"), name: "녹차라떼"),
        CoffeeMenu(image: Image("coffee"), name: "카라멜 마키야또"),
        CoffeeMenu(image: Image("coffee"), name: "플랫 화이트")
    ]
}
