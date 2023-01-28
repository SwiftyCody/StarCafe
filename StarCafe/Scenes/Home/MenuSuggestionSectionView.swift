//
//  MenuSuggestionSectionView.swift
//  StarCafe
//
//  Created by Cody on 2023/01/20.
//

import SwiftUI

struct MenuSuggestionSectionView: View {
    
    var body: some View {
        VStack {
            Text("\(User.shared.userName)님을 위한 추천메뉴")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16)
            
            ScrollView(.vertical, showsIndicators: false) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(CoffeeMenu.sample) { menu in
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
        MenuSuggestionSectionView()
    }
}
