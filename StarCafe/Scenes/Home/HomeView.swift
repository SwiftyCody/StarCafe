//
//  HomeView.swift
//  StarCafe
//
//  Created by Cody on 2023/01/26.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        ScrollView(.vertical) {
            HomeHeaderView(isNeedToReload: $viewModel.isNeedToReload)
            MenuSuggestionSectionView(coffeeMenu: $viewModel.coffeeMenu)
            EventSectionView(events: $viewModel.events)
            Spacer(minLength: 32.0)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
