//
//  DailyBonusIcon.swift
//  TigerMemoryGame
//
//  Created by Роман on 13.05.2024.
//

import SwiftUI

struct DailyBonusIcon: View {
    var numberOfbonuses = 0
    var body: some View {
        ZStack {
            Circle().foregroundStyle(.yellowApp)
                .frame(width: 76)
            Image(.box)
                .resizable()
                .frame(width: 81, height: 70)
            ZStack {
                Circle()
                    .foregroundStyle(.redApp)
                .frame(width: 31)
                Text("\(numberOfbonuses)")
                    .font(.system(size: 22, weight: .heavy))
                    .foregroundStyle(.white)
            }.offset(x: 30, y: -33)
        }
    }
}

#Preview {
    DailyBonusIcon()
}
