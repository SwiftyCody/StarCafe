//
//  HomeHeaderView.swift
//  StarCafe
//
//  Created by solgoon on 2023/01/26.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            HStack(alignment: .top) {
                Text("\(User.shared.userName)님~\n반갑습니다!☕️")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Button(action: { }, label: {
                    Image(systemName: "arrow.triangle.2.circlepath")
                })
            }
            
            HStack {
                Button(action: { }, label: {
                    Image(systemName: "mail")
                        .foregroundColor(.secondary)
                    Text("What's New")
                        .foregroundColor(.primary)
                        .font(.system(size: 16.0, weight: .semibold, design: .default))
                })
                Button(action: { }, label: {
                    Image(systemName: "ticket")
                        .foregroundColor(.secondary)
                    Text("Coupon")
                        .foregroundColor(.primary)
                        .font(.system(size: 16.0, weight: .semibold, design: .default))
                })
                
                Spacer()
                
                Button(action: { }, label: {
                    Image(systemName: "bell")
                        .foregroundColor(.secondary)
                })
            }
        }
        .padding(16)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
