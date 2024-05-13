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
        ZStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        //MARK: - Background
        .background(content: {
            Image(.background)
                .resizable()
                .frame(width: 1000, height: 1072)
                .ignoresSafeArea()
                

        })
        //MARK: - ToolBar
        .navigationBarBackButtonHidden(true)
        .toolbar {
            //MARK: - Close Button
            ToolbarItem(placement: .topBarLeading, content: {
                Button(action: {
                    dismiss()
                    }, label: {
                    Image(.close)
                        .resizable()
                        .frame(width: 70, height: 70)
                        
                }).frame(width: 70, height: 70)
                
            })
        }
    }
}

#Preview {
    NavigationView {
        GameView()
    }
}
