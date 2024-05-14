//
//  yellowRectengel.swift
//  TigerMemoryGame
//
//  Created by Роман on 14.05.2024.
//

import SwiftUI

struct yellowRectangle: View {
    var text = ""
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 11)
            .foregroundStyle(.yellowApp)
            Text(text)
                .foregroundStyle(.white)
                .font(.system(size: 25, weight: .heavy))
        }.frame(width: 125, height: 52)
    }
}

#Preview {
    yellowRectangle()
}
