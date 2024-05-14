//
//  GameView.swift
//  TigerMemoryGame
//
//  Created by Роман on 14.05.2024.
//

import SwiftUI

struct GameView: View {
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
                yellowRectangle(text: "LEVEL 3")
                yellowRectangle(text: "00:13")
                Spacer()
            }
            Spacer()
            //MARK: - Animals table
            AnimalsTableView()
            Spacer()
            
            //MARK: - Bottom bar
            HStack(spacing: 30){
                YellowCircleView(imageName: "alarm")
                
               BrownRectangle(text: "1200")
                
                YellowCircleView(imageName: "questionmark")
                
                
            }
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
    NavigationView {
        GameView()
    }
}
