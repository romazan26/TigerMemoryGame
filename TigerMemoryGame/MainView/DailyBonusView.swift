//
//  DailyBonusView.swift
//  TigerMemoryGame
//
//  Created by Роман on 14.05.2024.
//

import SwiftUI

struct DailyBonusView: View {
    var body: some View {
        ZStack {
            BlurUIView(style: .systemChromeMaterialDark)
                .opacity(0.8)
                .ignoresSafeArea()
            HStack {
                Text("+")
                Image(.manyCoin)
                    .resizable()
                    .frame(width: 81, height: 77)
                Text("200")
            }
            .foregroundStyle(.white)
            .font(.system(size: 60, weight: .heavy, design: .monospaced))
        }
    }
}

#Preview {
    DailyBonusView()
}
