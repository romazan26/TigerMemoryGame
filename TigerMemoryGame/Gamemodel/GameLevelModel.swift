//
//  GameLevelModel.swift
//  TigerMemoryGame
//
//  Created by Роман on 14.05.2024.
//

import Foundation

struct GameLevelModel: Identifiable{
    let id = UUID()
    let levelNumber: Int
    let rule: [Int]
    let time: Int
     
}
