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
    
    @StateObject var viewModel: GameViewModel
    var stateCell: StateLevelCell {
        var state = StateLevelCell.close
        if viewModel.players[0].level >= numderOfLevel {
            
            state =  StateLevelCell.open
            if viewModel.levels[numderOfLevel].completed {
                state = StateLevelCell.end
            }
        }
        return state
    }
    
    
    var numderOfLevel = 0
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 76, height: 76)
                .foregroundStyle(viewModel.chooseLevel == numderOfLevel - 1 ? .green : .yellowApp)
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
        .onTapGesture {
            if viewModel.players[0].level >= numderOfLevel {
                viewModel.chooseLevel = numderOfLevel - 1
                
            }
        }
    }
}

#Preview {
    LevelCellView(viewModel: GameViewModel())
}
