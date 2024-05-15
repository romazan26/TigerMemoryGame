//
//  LoadingView.swift
//  TigerMemoryGame
//
//  Created by Роман on 13.05.2024.
//

import SwiftUI

struct LoadingView: View {
    
    @State var progress: Float = 0
    @State var isPresent = false
    @StateObject var viewModel = GameViewModel()
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)) {
            
            //MARK: - Background
            Image(.background)
                .resizable()
                .frame(width: 1000, height: 852)
                .ignoresSafeArea()
            VStack{
                //MARK: - Title
                Text("TIGER MEMORY")
                    .foregroundStyle(.white)
                    .font(.system(size: 38, weight: .heavy))
                    .padding(.top, 160)
                Text("Loading...")
                    .foregroundStyle(.white)
                    .font(.system(size: 24, weight: .regular, design: .serif))
                   
                
                //MARK: - Tiger image
               Spacer()
                ZStack {
                    Image(.tiger)
                            .resizable()
                            .frame(width: 359, height: 370)
                        
                    //MARK: - Loading Circle
                    ProgressCircleView(progress: progress * 0.01)
                        .frame(width: 100, height: 100)
                        
                }
            }
            
        }
        .fullScreenCover(isPresented: $isPresent, content: {
            MainView( viewModel: viewModel)
        })
        .onAppear(perform: {
            print(viewModel.levelRules)
            Timer.scheduledTimer(withTimeInterval: 0.02, repeats: true) { timer in
                if progress < 100{
                    progress += 1
                }else {
                    timer.invalidate()
                            if viewModel.players.isEmpty {
                                viewModel.addPlayer()
                            }
                    if viewModel.levels.isEmpty {
                        for i in 1...40 {
                            viewModel.addLevel(number: i)
                        }
                    }
                        
                    isPresent = true
                }
            }
        })
    }
}

#Preview {
    LoadingView()
}
