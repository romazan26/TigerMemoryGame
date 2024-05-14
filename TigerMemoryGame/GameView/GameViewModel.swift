//
//  GameViewModel.swift
//  TigerMemoryGame
//
//  Created by Роман on 14.05.2024.
//

import Foundation
import CoreData

final class GameViewModel: ObservableObject {
    @Published var players: [Player] = []
    @Published var levels: [Level] = []
    
    //MARK: - Core Data
    let container = NSPersistentContainer(name: "GameTiger")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error{
                print("Core data failed to load: \(error.localizedDescription)")
            }
        }
        fetchPlayer()
        fetchLevel()
    }
    
    func fetchPlayer() {
        let request = NSFetchRequest<Player>(entityName: "Player")
        
        do {
            players = try container.viewContext.fetch(request)
        }catch let error {
            print("Error fetching \(error)")
        }
    }
    
    func fetchLevel() {
        let request = NSFetchRequest<Level>(entityName: "Level")
        
        do {
            levels = try container.viewContext.fetch(request)
        }catch let error {
            print("Error fetching \(error)")
        }
    }
    
    func saveData() {
        do {
            try container.viewContext.save()
            fetchPlayer()
        }catch let error {
            print("error save data \(error)")
        }
    }
    func saveDataLevel() {
        do {
            try container.viewContext.save()
            fetchLevel()
        }catch let error {
            print("error save data \(error)")
        }
    }
    
    func addPlayer() {
        let newPlayer = Player(context: container.viewContext)
        newPlayer.level = 1
        newPlayer.money = 0
        newPlayer.dailyBonus = 0

        saveData()
    }
    func addLevel(number: Int) {
        
        let newLevel = Level(context: container.viewContext)
        newLevel.completed = false
        newLevel.number = Int64(number)
        
        saveDataLevel()
    }
}
