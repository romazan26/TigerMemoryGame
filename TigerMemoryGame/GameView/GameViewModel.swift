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
    
    //MARK: - Core Data
    let container = NSPersistentContainer(name: "GameTiger")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error{
                print("Core data failed to load: \(error.localizedDescription)")
            }
        }
        fetchPlayer()
    }
    
    func fetchPlayer() {
        let request = NSFetchRequest<Player>(entityName: "Player")
        
        do {
            players = try container.viewContext.fetch(request)
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
}
