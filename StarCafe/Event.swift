//
//  Event.swift
//  StarCafe
//
//  Created by solgoon on 2023/01/25.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    
    let image: Image
    let title: String
    let description: String
    
    static let sample: [Event] = [
        Event(image: Image("coffee"), title: "여름 한정 메뉴", description: "여름이니까 아이스커피~"),
        Event(image: Image("coffee"), title: "겨울 한정 메뉴", description: "겨울이니까 커피~"),
        Event(image: Image("coffee"), title: "제주도 한정 메뉴", description: "제주도 한정 메뉴 출시!")
    ]
}
