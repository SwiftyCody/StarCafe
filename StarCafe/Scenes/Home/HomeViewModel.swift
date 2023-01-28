//
//  HomeViewModel.swift
//  StarCafe
//
//  Created by solgoon on 2023/01/29.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var isNeedToReload = false {
        didSet {
            guard isNeedToReload else { return }
            
            coffeeMenu.shuffle()
            events.shuffle()
            
            isNeedToReload = false
        }
    }
    
    @Published var coffeeMenu: [CoffeeMenu] = [
        CoffeeMenu(image: Image("coffee"), name: "아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "카페라떼"),
        CoffeeMenu(image: Image("coffee"), name: "아이스 카페라떼"),
        CoffeeMenu(image: Image("coffee"), name: "녹차라떼"),
        CoffeeMenu(image: Image("coffee"), name: "카라멜 마키야또"),
        CoffeeMenu(image: Image("coffee"), name: "플랫 화이트")
    ]
    
    @Published var events: [Event] = [
        Event(image: Image("coffee"), title: "여름 한정 메뉴", description: "여름이니까 아이스커피~"),
        Event(image: Image("coffee"), title: "겨울 한정 메뉴", description: "겨울이니까 커피~"),
        Event(image: Image("coffee"), title: "제주도 한정 메뉴", description: "제주도 한정 메뉴 출시!")
    ]
}
