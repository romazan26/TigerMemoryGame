//
//  MainView.swift
//  TigerMemoryGame
//
//  Created by Роман on 13.05.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
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
                    Text("YOUR LEVEL: 3")
                        .foregroundStyle(.white)
                        .font(.system(size: 22, weight: .heavy))
                        .offset(y: -3)
                }.frame(width: 254, height: 108)
                
                Spacer()
                
                DailyBonusIcon()
                    .padding(.trailing, 290)
                
                NavigationLink {
                  SelectLevelView()
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
        MainView()
    }
}
