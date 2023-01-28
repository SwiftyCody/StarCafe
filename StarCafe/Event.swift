//
//  Event.swift
//  StarCafe
//
//  Created by Cody on 2023/01/25.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    
    let image: Image
    let title: String
    let description: String
}
