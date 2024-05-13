//
//  LevelCellView.swift
//  TigerMemoryGame
//
//  Created by Роман on 13.05.2024.
//

import SwiftUI
enum StateLevelCell{
    case end
    case open
    case close
}
struct LevelCellView: View {
    
    var stateCell = StateLevelCell.close
    var numderOfLevel = 0
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 76, height: 76)
                .foregroundStyle(.yellowApp)
            switch stateCell {
            case .end:
                Image(.star)
                    .resizable()
                .frame(width: 43, height: 43)
            case .open:
                Text("\(numderOfLevel)")
                    .foregroundStyle(.white)
                    .font(.system(size: 34, weight: .heavy))
            case .close:
                Image(.padlock)
                    .resizable()
                .frame(width: 33, height: 33)
            }
        }
    }
}

#Preview {
    LevelCellView()
}
