//
//  LevelTable.swift
//  TigerMemoryGame
//
//  Created by Роман on 13.05.2024.
//

import SwiftUI

struct LevelTable: View {
    @State private var numberLevel = 0
    @StateObject var viewModel: GameViewModel
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 20) {
                LevelCellView(viewModel: viewModel, numderOfLevel: numberLevel + 1)
                LevelCellView(viewModel: viewModel, numderOfLevel: numberLevel + 2)
                LevelCellView(viewModel: viewModel, numderOfLevel: numberLevel + 3)
            }
            HStack(spacing: 20) {
                LevelCellView(viewModel: viewModel, numderOfLevel: numberLevel + 4)
                if numberLevel < 36 {
                    LevelCellView(viewModel: viewModel, numderOfLevel: numberLevel + 5)
                    LevelCellView(viewModel: viewModel, numderOfLevel: numberLevel + 6)
                }
            }
            if numberLevel < 36{
                HStack(spacing: 20) {
                    LevelCellView(viewModel: viewModel, numderOfLevel: numberLevel + 7)
                    LevelCellView(viewModel: viewModel, numderOfLevel: numberLevel + 8)
                    LevelCellView(viewModel: viewModel, numderOfLevel: numberLevel + 9)
                }
                HStack(spacing: 20) {
                    LevelCellView(viewModel: viewModel, numderOfLevel: numberLevel + 10)
                    LevelCellView(viewModel: viewModel, numderOfLevel: numberLevel + 11)
                    LevelCellView(viewModel: viewModel, numderOfLevel: numberLevel + 12)
                }
            }
            HStack {
                if numberLevel >= 12 {
                    Button(action: {numberLevel -= 12}, label: {
                        ZStack {
                            Circle()
                                .foregroundStyle(.yellowApp)
                                Image(systemName: "arrowshape.left.fill")
                                .resizable()
                                .frame(width: 39, height: 29)
                                .foregroundStyle(.white)
                        }.frame(width: 76)
                    })
                }
                if numberLevel < 36 {
                    Button(action: {numberLevel += 12}, label: {
                        ZStack {
                            Circle()
                                .foregroundStyle(.yellowApp)
                            Image(systemName: "arrowshape.right.fill")
                                .resizable()
                                .frame(width: 39, height: 29)
                                .foregroundStyle(.white)
                        }.frame(width: 76)
                    })
                }
            }
        }
    }
}

#Preview {
    LevelTable(viewModel: GameViewModel())
}
