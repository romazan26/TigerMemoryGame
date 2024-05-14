//
//  YellowCircleView.swift
//  TigerMemoryGame
//
//  Created by Роман on 14.05.2024.
//

import SwiftUI

struct YellowCircleView: View {
    var imageName = ""
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(.yellowApp)
            .frame(width: 76, height: 76)
            .blur(radius: 0.5)
            Image(systemName: imageName)
                .resizable()
                .frame(width: 39,height: 39)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    YellowCircleView()
}
