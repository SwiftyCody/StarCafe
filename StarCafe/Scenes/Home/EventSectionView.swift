//
//  EventSectionView.swift
//  StarCafe
//
//  Created by Cody on 2023/01/25.
//

import SwiftUI

struct EventSectionView: View {
    @Binding var events: [Event]
    
    var body: some View {
        VStack {
            HStack {
                Text("Events")
                    .font(.headline)
                
                Spacer()
                
                Button(action: { }, label: {
                    Text("See all")
                        .accentColor(.green)
                        .font(.subheadline)
                })
            }
            .padding(.horizontal, 16.0)
            
            ScrollView(.horizontal, showsIndicators: true) {
                LazyHStack(spacing: 16) {
                    ForEach(events) { event in
                        EventSectionItemView(event: event)
                    }
                }
                .padding(.horizontal, 16.0)
            }
        }
    }
}

struct EventSectionItemView: View {
    let event: Event
    
    var body: some View {
        VStack() {
            event.image
                .resizable()
                .scaledToFill()
                .frame(height: 150.0)
                .clipped()
            Text(event.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)
            Text(event.description)
                .lineLimit(1)
                .font(.callout)
                .frame(maxWidth: .infinity, alignment: .topLeading)
        }.frame(width: UIScreen.main.bounds.width - 32.0)
    }
}

struct EventSectionView_Previews: PreviewProvider {
    static var previews: some View {
        EventSectionView(events: .constant([
            Event(image: Image("coffee"), title: "여름 한정 메뉴", description: "여름이니까 아이스커피~"),
            Event(image: Image("coffee"), title: "겨울 한정 메뉴", description: "겨울이니까 커피~"),
            Event(image: Image("coffee"), title: "제주도 한정 메뉴", description: "제주도 한정 메뉴 출시!")
        ]))
    }
}
