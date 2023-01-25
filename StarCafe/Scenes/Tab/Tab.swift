//
//  Tab.swift
//  StarCafe
//
//  Created by solgoon on 2023/01/17.
//

import SwiftUI

enum Tab {
    case home
    case other
    
    var textItem: Text {
        switch self {
        case .home:
            return Text("Home")
        case .other:
            return Text("Other")
        }
    }
    
    var imageItem: Image {
        switch self {
        case .home:
            return Image(systemName: "house.fill")
        case .other:
            return Image(systemName: "ellipsis")
        }
    }
}
