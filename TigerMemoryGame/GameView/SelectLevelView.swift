//
//  GameView.swift
//  TigerMemoryGame
//
//  Created by Роман on 13.05.2024.
//

import SwiftUI

struct SelectLevelView: View {
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            //MARK: - Toolbar
            HStack{
                Button(action: {
                    dismiss()
                    }, label: {
                    Image(.close)
                        .resizable()
                        .frame(width: 70, height: 70)
                        
                }).frame(width: 70, height: 70)
                Spacer()
                NavigationLink {
                    SettingsView()
                } label: {
                    Image(.settings)
                        .resizable()
                        .frame(width: 80, height: 80)
                }
            }
            Spacer()
            
            //MARK: - Title
            Text("SELECT LEVEL")
                .foregroundStyle(.white)
                .font(.system(size: 36, weight: .heavy))
                .minimumScaleFactor(0.5)
            
            //MARK: - Level Table
            LevelTable()
            
            Spacer()
            
            //MARK: - Start Button
            NavigationLink {
                GameView()
            } label: {
                ZStack {
                    Image(.buttonBackgroun)
                        .resizable()
                    Text("START")
                        .font(.system(size: 35, weight: .heavy))
                        .foregroundStyle(.white)
                }
            }.frame(width: 370, height: 139)
        }
        .padding()
        
        //MARK: - Background
        .background(content: {
            Image(.background)
                .resizable()
                .frame(width: 1000, height: 1072)
                .ignoresSafeArea()
                

        })
        
        //MARK: - ToolBar
        .navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    NavigationView {
        SelectLevelView()
    }
}
