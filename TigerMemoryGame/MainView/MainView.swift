//
//  MainView.swift
//  TigerMemoryGame
//
//  Created by Роман on 13.05.2024.
//

import SwiftUI

struct MainView: View {
    
    @AppStorage("noUser") var noUser: Bool?
    @State private var isPresent = false
    @StateObject var viewModel: GameViewModel
    
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    //MARK: - Toolbar
                    HStack{
                        NavigationLink {
                            AboutGameView()
                        } label: {
                            Image(.aboutTheGame)
                                .resizable()
                                .frame(width: 80, height: 80)
                        }
                        Spacer()
                        NavigationLink {
                            SettingsView()
                        } label: {
                            Image(.settings)
                                .resizable()
                                .frame(width: 80, height: 80)
                        }
                    }
                    //MARK: - Title
                    Text("TIGER MEMORY")
                        .foregroundStyle(.white)
                        .font(.system(size: 38, weight: .heavy))
                    
                    //MARK: - Level Table
                    ZStack{
                        Image(.level)
                            .resizable()
                        Text("YOUR LEVEL: \(viewModel.players[0].level)")
                            .foregroundStyle(.white)
                            .font(.system(size: 22, weight: .heavy))
                            .offset(y: -3)
                    }.frame(width: 254, height: 108)
                    
                    Spacer()
                    
                    //MARK: - DeilyBonus buttom
                    Button(action: {
                        if viewModel.players[0].dailyBonus > 0 {
                            isPresent = true
                            viewModel.players[0].dailyBonus -= 1
                        }
                    }, label: {
                        DailyBonusIcon(numberOfbonuses: Int(viewModel.players[0].dailyBonus))
                    })
                    .padding(.trailing, 290)
                    
                    //MARK: - Play button
                    NavigationLink {
                        SelectLevelView(viewModel: viewModel)
                    } label: {
                        ZStack {
                            Image(.buttonBackgroun)
                                .resizable()
                            Text("PLAY")
                                .font(.system(size: 35, weight: .heavy))
                                .foregroundStyle(.white)
                        }
                    }.frame(width: 370, height: 139)
                    
                }
                if isPresent {
                    DailyBonusView()
                        .onTapGesture {
                            isPresent = false
                        }
                }
            }
            .animation(.bouncy, value: isPresent)
            .background(content: {
                //MARK: - Background
                Image(.background)
                    .resizable()
                    .frame(width: 1000, height: 1072)
                    .ignoresSafeArea()
            })
            .navigationBarBackButtonHidden(true)
            
        }
    }
}

#Preview {
    NavigationView {
        MainView( viewModel: GameViewModel())
    }
}
