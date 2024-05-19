//
//  LossView.swift
//  TigerMemoryGame
//
//  Created by Роман on 17.05.2024.
//

import SwiftUI

struct LossView: View {
    @StateObject var viewModel:GameViewModel
    var body: some View {
        ZStack {
            BlurUIView(style: .systemChromeMaterialDark)
                .opacity(0.8)
                .ignoresSafeArea()
            VStack {
                //MARK: - Toolbar
                HStack{
                        Image(.close)
                            .resizable()
                            .frame(width: 70, height: 70)
                    Spacer()
                }.padding()
                
                //MARK: - Winner title
                ZStack{
                    Image(.losse)
                        .resizable()
                    Text("YOU LOSSE")
                        .padding(.top, -136)
                        .font(.system(size: 26, weight: .heavy, design: .monospaced))
                        .foregroundStyle(.white)
                    
                    VStack{
                        //MARK: - Many win
                        HStack{
                            Image(.coin)
                                .resizable()
                                .frame(width: 40, height: 40)
                            Text("0")
                        }
                        //MARK: - good answer
                        HStack{
                            Image(systemName: "arrow.triangle.2.circlepath")
                                .resizable()
                                .frame(width: 35, height: 31)
                            Text("\(viewModel.answerArray.count)/\(viewModel.levelRules[viewModel.chooseLevel].rule.count)")
                        }
                    }
                    .foregroundStyle(.white)
                    .font(.system(size: 35, weight: .heavy, design: .monospaced))
                    Text("Continue")
                        .padding(.top, 298)
                        .font(.system(size: 20, weight: .heavy, design: .monospaced))
                        .foregroundStyle(.white)
                }
                .frame(width: 386, height: 486)
                Spacer()
            }
        }
    }
}

#Preview {
    LossView(viewModel: GameViewModel())
}
