//
//  YellowCircleView.swift
//  TigerMemoryGame
//
//  Created by Роман on 14.05.2024.
//

import SwiftUI

struct YellowCircleView: View {
    var imageName = ""
    var circleHeight: CGFloat = 76
    var widthImage: CGFloat = 39
    var heightImage: CGFloat = 39
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(.yellowApp)
            .frame(width: circleHeight)
            .blur(radius: 0.5)
            Image(systemName: imageName)
                .resizable()
                .frame(width: widthImage,height: heightImage)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    YellowCircleView()
}
