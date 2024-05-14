//
//  BrownRectangle.swift
//  TigerMemoryGame
//
//  Created by Роман on 14.05.2024.
//

import SwiftUI

struct BrownRectangle: View {
    var text = "1200"
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 11)
            .foregroundStyle(.brownApp)
            HStack {
                Image(.coin)
                    .resizable()
                    .frame(width: 36, height: 36)
                Text(text)
                    .foregroundStyle(.yellowApp)
                    .font(.system(size: 28, weight: .heavy,design: .monospaced))
            }
        }.frame(width: 125, height: 52)
    }
}

#Preview {
    BrownRectangle()
}
