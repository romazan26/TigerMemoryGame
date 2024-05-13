//
//  LevelTable.swift
//  TigerMemoryGame
//
//  Created by Роман on 13.05.2024.
//

import SwiftUI

struct LevelTable: View {
    @State private var numberLevel = 0
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 20) {
                LevelCellView(stateCell: .end, numderOfLevel: numberLevel + 1)
                LevelCellView(stateCell: .end, numderOfLevel: numberLevel + 2)
                LevelCellView(stateCell: .open, numderOfLevel: numberLevel + 3)
            }
            HStack(spacing: 20) {
                LevelCellView(stateCell: .close, numderOfLevel: numberLevel + 4)
                LevelCellView(stateCell: .close, numderOfLevel: numberLevel + 5)
                LevelCellView(stateCell: .close, numderOfLevel: numberLevel + 6)
            }
            HStack(spacing: 20) {
                LevelCellView(stateCell: .close, numderOfLevel: numberLevel + 7)
                LevelCellView(stateCell: .close, numderOfLevel: numberLevel + 8)
                LevelCellView(stateCell: .close, numderOfLevel: numberLevel + 9)
            }
            HStack(spacing: 20) {
                LevelCellView(stateCell: .close, numderOfLevel: numberLevel + 10)
                LevelCellView(stateCell: .close, numderOfLevel: numberLevel + 11)
                LevelCellView(stateCell: .close, numderOfLevel: numberLevel + 12)
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
    LevelTable()
}
