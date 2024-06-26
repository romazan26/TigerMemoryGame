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
    @Published var levelRules: [GameLevelModel] = []
    @Published var chooseLevel = 0
    
    @Published var checkAnimal1 = false
    @Published var checkAnimal2 = false
    @Published var checkAnimal3 = false
    @Published var checkAnimal4 = false
    @Published var checkAnimal5 = false
    @Published var checkAnimal6 = false
    @Published var checkAnimal7 = false
    @Published var checkAnimal8 = false
    @Published var checkAnimal9 = false
    @Published var checkAnimal10 = false
    @Published var checkAnimal11 = false
    @Published var checkAnimal12 = false
    
    @Published var tabAnswerTag = 0
    @Published var answerArray: [Int] = []
    @Published var winGame = false
    @Published var lossGame = false
    
    @Published var time = 0
    @Published var disableButton = true
    @Published var buyAnswer = false
    
    
    
    
    //MARK: - Get daily bonus
    func getDailyBonus(){
        players[0].dailyBonus -= 1
        players[0].money += 200
        saveData()
    }
    
    func checkDateDailyBonus(){
        let futurDate: Date = Calendar.current.date(byAdding: .day, value: 1, to: players[0].deilyBonusDate ?? Date()) ?? Date()
        if players[0].deilyBonusDate == nil {
            players[0].deilyBonusDate = Date()
            saveData()
        }
        if futurDate < Date.now{
            players[0].dailyBonus += 1
            players[0].deilyBonusDate = Date()
            saveData()
        }
    }
    
    //MARK: - Buy answer
    func buyAnswerBonus(){
        if players[0].money >= 400 {
            buyAnswer = true
            players[0].money -= 400
            saveData()
        }
    }
    
    //MARK: - Buy Time
    func buyTime(){
        if players[0].money >= 300 {
            time += 10
            players[0].money -= 300
            saveData()
        }
    }
    
    //MARK: - Winner
    func winner(){
        players[0].money += 200
        levels[chooseLevel + 1].completed = true
        if players[0].level == chooseLevel + 1 {
            players[0].level += 1
        }
        saveDataLevel()
        saveData()
        clean()
    }
    
    
    //MARK: - ADD AnswerArray
    func addAnswer(){
        answerArray.append(tabAnswerTag)
        for index in answerArray.indices {
            if answerArray[index] != levelRules[chooseLevel].rule[index]{
                lossGame = true
            }
        }
        if answerArray == levelRules[chooseLevel].rule {
            winGame = true
        }
        buyAnswer = false
        print("answerArray: \(answerArray)")
    }
    
    //MARK: - Timer
    func startTimer(){
        time = levelRules[chooseLevel].time
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            if self.time > 0 {
                self.time -= 1
            } else{
                timer.invalidate()
                self.lossGame = true
            }
        }
    }
    
    //MARK: - LevelRules
    func makeArray(maxLevel: Int) -> [Int]{
        var array = [Int]()
        for _ in 1...maxLevel{
            var randomNumber = Int.random(in: 1...12)
            while array.firstIndex(where: { $0 == randomNumber}) != nil{
                randomNumber = Int.random(in: 1...12)
            }
            array.append(randomNumber)
            
        }
        return array
    }
    func getLevelRules() -> [GameLevelModel] {
        [GameLevelModel(levelNumber: 1, rule: makeArray(maxLevel: 5), time: 25),
         GameLevelModel(levelNumber: 2, rule: makeArray(maxLevel: 5), time: 25),
         GameLevelModel(levelNumber: 3, rule: makeArray(maxLevel: 5), time: 25),
         GameLevelModel(levelNumber: 4, rule: makeArray(maxLevel: 5), time: 25),
         GameLevelModel(levelNumber: 5, rule: makeArray(maxLevel: 5), time: 25),
         GameLevelModel(levelNumber: 6, rule: makeArray(maxLevel: 8), time: 15),
         GameLevelModel(levelNumber: 7, rule: makeArray(maxLevel: 8), time: 15),
         GameLevelModel(levelNumber: 8, rule: makeArray(maxLevel: 8), time: 15),
         GameLevelModel(levelNumber: 9, rule: makeArray(maxLevel: 8), time: 15),
         GameLevelModel(levelNumber: 10, rule: makeArray(maxLevel: 8), time: 15),
         GameLevelModel(levelNumber: 11, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 12, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 13, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 14, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 15, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 16, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 17, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 18, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 19, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 20, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 21, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 22, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 23, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 24, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 25, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 26, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 27, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 28, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 29, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 30, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 31, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 32, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 33, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 34, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 35, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 36, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 37, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 38, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 39, rule: makeArray(maxLevel: 12), time: 10),
         GameLevelModel(levelNumber: 40, rule: makeArray(maxLevel: 12), time: 10),
        ]
    }
    
    //MARK: - Core Data
    let container = NSPersistentContainer(name: "GameTiger")
    
    init() {
        
        container.loadPersistentStores { description, error in
            if let error = error{
                print("Core data failed to load: \(error.localizedDescription)")
            }
        }
        levelRules = getLevelRules()
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
        newPlayer.dailyBonus = 1
        
        saveData()
    }
    func addLevel(number: Int) {
        
        let newLevel = Level(context: container.viewContext)
        newLevel.completed = false
        newLevel.number = Int64(number)
        
        saveDataLevel()
    }
    
    //MARK: - Service function
    func clean(){
        checkAnimal1 = false
        checkAnimal2 = false
        checkAnimal3 = false
        checkAnimal4 = false
        checkAnimal5 = false
        checkAnimal6 = false
        checkAnimal7 = false
        checkAnimal8 = false
        checkAnimal9 = false
        checkAnimal10 = false
        checkAnimal11 = false
        checkAnimal12 = false
        tabAnswerTag = 0
        answerArray = []
        lossGame = false
        winGame = false
        time = 0
    }
}
