//
//  OtherView.swift
//  StarCafe
//
//  Created by Cody on 2023/01/28.
//

import SwiftUI

struct OtherView: View {
    
    var body: some View {
        
        NavigationView {
            List() {
                ForEach(Menu.allCases) { section in
                    Section(header: Text(section.title)) {
                        ForEach(section.menu, id: \.hashValue) { raw in
                            NavigationLink(destination: {
                                Text("\(raw)")
                            }, label: {
                                Text(raw)
                            })
                        }
                    }
                }
            }
            .listStyle(.grouped)
            .scrollContentBackground(.hidden)
            .navigationTitle("Other")
            .toolbar {
                NavigationLink(destination: SettingView(), label: {
                    Image(systemName: "gear")
                })
            }
        }
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
