//
//  AboutGameView.swift
//  TigerMemoryGame
//
//  Created by Роман on 13.05.2024.
//

import SwiftUI

struct AboutGameView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            //MARK: - Toolbar
            HStack{
                Button {
                    dismiss()
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
            Spacer()
            
            //MARK: - About title
            ZStack{
                Image(.aboutTitle)
                    .resizable()
                VStack{
                    Text("TRY TO \n MEMORIZE THE ORDER OF THE \n REPEAT THIS ORDER. \n \n IMPROVE YOUR MEMORY SKILLS \n BY COMPLETING \n \n DIFFERENT LEVELS, COLLECTING COINS AND BUYING BOOSTERS  FOR THEM TO MAKE IT EASIER. ")
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                        .font(.system(size: 16, weight: .bold))
                        .padding(.horizontal, 40)
                    Text("ENJOY THE GAME!")
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                        .font(.system(size: 22, weight: .heavy))
                        .padding(.horizontal, 35)
                        .padding(.top, 10)
                }
            }.frame(width: 280, height: 440)
            Button(action: {dismiss()}, label: {
                ZStack {
                    Image(.buttonBackgroun)
                        .resizable()
                    Text("BACK")
                        .font(.system(size: 35, weight: .heavy))
                        .foregroundStyle(.white)
                }
            }).frame(width: 370, height: 139)
       
        }
        
        //MARK: - Background
        .background(content: {
            Image(.background)
                .resizable()
                .frame(width: 1000, height: 1072)
                .ignoresSafeArea()
        })
        
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    AboutGameView()
}
