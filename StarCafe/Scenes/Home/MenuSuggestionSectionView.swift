//
//  MenuSuggestionSectionView.swift
//  StarCafe
//
//  Created by Cody on 2023/01/20.
//

import SwiftUI

struct MenuSuggestionSectionView: View {
    @Binding var coffeeMenu: [CoffeeMenu]
    
    var body: some View {
        VStack {
            Text("\(User.shared.userName)님을 위한 추천메뉴")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16)
            
            ScrollView(.vertical, showsIndicators: false) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(coffeeMenu) { menu in
                            VStack {
                                MenuSuggestionItemView(coffeeMenu: menu)
                            }
                        }
                    }
                    .padding(.horizontal, 16.0)
                }
            }
        }
    }
}

struct MenuSuggestionItemView: View {
    let coffeeMenu: CoffeeMenu
    
    var body: some View {
        VStack {
            coffeeMenu.image
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            Text(coffeeMenu.name)
                .font(.caption)
        }
    }
}

struct MenuSuggestionSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuSuggestionSectionView(coffeeMenu: .constant([
            CoffeeMenu(image: Image("coffee"), name: "아메리카노"),
            CoffeeMenu(image: Image("coffee"), name: "아이스 아메리카노"),
            CoffeeMenu(image: Image("coffee"), name: "카페라떼"),
            CoffeeMenu(image: Image("coffee"), name: "아이스 카페라떼"),
            CoffeeMenu(image: Image("coffee"), name: "녹차라떼"),
            CoffeeMenu(image: Image("coffee"), name: "카라멜 마키야또"),
            CoffeeMenu(image: Image("coffee"), name: "플랫 화이트")
        ]))
    }
}
