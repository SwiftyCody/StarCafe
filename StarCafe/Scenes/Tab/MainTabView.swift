//
//  MainTabView.swift
//  StarCafe
//
//  Created by solgoon on 2023/01/16.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Tab.home.imageItem
                    Tab.home.textItem
                }
            Text("Other")
                .tabItem {
                    Tab.other.imageItem
                    Tab.other.textItem
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}


//struct SomeLazyStack: View {
//
//    struct StackData: Identifiable {
//        let value: Int
//        var id: Int { value }
//    }
//    let numbers: [StackData] = (0..<100).map { StackData(value: $0) }
//
//    var body: some View {
//        ScrollView {
//            LazyVStack {
//                ForEach(numbers) { number in
//                    Text("\(number.value)")
//                        .font(.title2)
//                }
//            }
//        }
//    }
//}
//
//struct SomeLazyStack_Previews: PreviewProvider {
//    static var previews: some View {
//        SomeLazyStack()
//    }
//}

//struct SomeList: View {
//
//    struct StackData: Identifiable {
//        let value: Int
//        var id: Int { value }
//    }
//    let numbers: [StackData] = (0..<100).map { StackData(value: $0) }
//
//    var body: some View {
////        List(numbers) { number in
////            Text("\(number.value)")
////        }
//        List {
//            Section(header: Text("header1")) {
//                ForEach(numbers) { number in
//                    Text("\(number.value)")
//                }
//            }
//
//            Section(header: Text("header2")) {
//                ForEach(numbers) { number in
//                    Text("\(100+number.value)")
//                }
//            }
//        }
//    }
//}
//
//struct SomeList_Previews: PreviewProvider {
//    static var previews: some View {
//        SomeList()
//    }
//}
