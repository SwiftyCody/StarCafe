//
//  MenuSuggestionSectionView.swift
//  StarCafe
//
//  Created by solgoon on 2023/01/20.
//

import SwiftUI

struct MenuSuggestionSectionView: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(CoffeeMenu.sample) { menu in
                        VStack {
                            MenuSuggestionItemView(coffeeMenu: menu)
                        }
                    }
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
