//
//  SettingView.swift
//  StarCafe
//
//  Created by Cody on 2023/01/28.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List {
            Section {
                SettingUserInfoSectionView()
            }
            
            Section {
                Button("회원 정보 수정") {}
                    .accentColor(.black)
                Button("회원 탈퇴") {}
                    .accentColor(.black)
            }
        }
        .navigationTitle("설정")
        .listStyle(.grouped)
        .navigationBarTitleDisplayMode(.inline)
        .scrollContentBackground(.hidden)
    }
}

struct SettingUserInfoSectionView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4.0) {
                Text(User.shared.userName)
                    .font(.title)
                Text(User.shared.account)
                    .font(.caption)
            }
            
            Spacer()
            
            Button(action: {
                
            }) {
                Text("로그아웃")
                    .accentColor(.green)
                    .font(.system(size: 14.0, weight: .bold))
            }
            .padding(8.0)
            .overlay(Capsule().stroke(Color.green))
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
