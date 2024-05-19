//
//  GameView.swift
//  TigerMemoryGame
//
//  Created by Роман on 14.05.2024.
//

import SwiftUI

struct GameView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State var isPresent = false
    @State private var winGame = false
    @State private var bonusName = ""
    
    @StateObject var viewModel: GameViewModel
    var body: some View {
        ZStack {
            VStack {
                //MARK: - Toolbar
                HStack{
                    Button(action: {
                        dismiss()
                        viewModel.clean()
                    }, label: {
                        Image(.close)
                            .resizable()
                            .frame(width: 70, height: 70)
                        
                    }).frame(width: 70, height: 70)
                    
                    Spacer()
                    yellowRectangle(text: "LEVEL \((viewModel.chooseLevel) + 1)")
                    yellowRectangle(text: "00:\(viewModel.time)")
                    Spacer()
                }
                Spacer()
                
                //MARK: - Animals table
                AnimalsTableView(viewModel: viewModel)
                Spacer()
                
                //MARK: - Bottom bar
                HStack(spacing: 30){
                    
                    //MARK: - Bonus Time
                    Button(action: {
                        bonusName = "alarm"
                        isPresent = true
                    }, label: {
                        YellowCircleView(imageName: "alarm")
                    }).disabled(viewModel.disableButton ? true : false)
                    
                    //MARK: - Money
                    BrownRectangle(text: "\(viewModel.players[0].money)")
                    
                    //MARK: - questbonus
                    Button(action: {
                        bonusName = "questionmark"
                        isPresent = true}, label: {
                        YellowCircleView(imageName: "questionmark")
                    }).disabled(viewModel.disableButton ? true : false)
                }
            }
            
            //MARK: - Bonus buy View
            if isPresent {
                bonusName == "alarm" ? BuyBonusView(viewModel: viewModel, isPresent: $isPresent, bonus: bonusName) : BuyBonusView(viewModel: viewModel, isPresent: $isPresent, bonus: bonusName)
            }
            
            //MARK: - Winner View
            if viewModel.winGame {
                WinnerView(viewModel: viewModel)
                    .onTapGesture {
                        viewModel.winner()
                        dismiss()
                    }
            }
            
            //MARK: - Loss View
            if viewModel.lossGame {
                LossView(viewModel: viewModel)
                    .onTapGesture {
                        viewModel.clean()
                        dismiss()
                    }
            }
        }
        .onAppear(perform: {
            viewModel.clean()
        })
        .animation(.bouncy, value: isPresent)
        .animation(.bouncy, value: winGame)
        .navigationBarBackButtonHidden(true)
        
        //MARK: - Background
        .background(content: {
            Image(.background)
                .resizable()
                .frame(width: 1000, height: 1072)
                .ignoresSafeArea()
            
            
        })
    }
}

#Preview {
    NavigationView {
        GameView(viewModel: GameViewModel())
    }
}
