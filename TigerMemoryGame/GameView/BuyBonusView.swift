//
//  BayBonusView.swift
//  TigerMemoryGame
//
//  Created by Роман on 14.05.2024.
//

import SwiftUI

struct BuyBonusView: View {
    @Binding var isPresent: Bool
    var bonus = "alarm"
    var body: some View {
        ZStack {
            BlurUIView(style: .systemChromeMaterialDark)
                .opacity(0.8)
                .ignoresSafeArea()
            VStack(spacing: 20){
                //MARK: - Toolbar
                HStack{
                    Button(action: {
                        isPresent = false
                    }, label: {
                        Image(.close)
                            .resizable()
                            .frame(width: 70, height: 70)
                        
                    }).frame(width: 70, height: 70)
                    Spacer()
                }.padding()
                
                //MARK: - Many
                BrownRectangle(text: "1200")
                
                //MARK: - Bonus icon
                YellowCircleView(imageName: bonus, circleHeight: 117, widthImage: 60, heightImage: 60)
                
                //MARK: - bonus totle
                Text(bonus == "alarm" ? "+10 SEC" : "NEXT CARD")
                    .foregroundStyle(.white)
                    .font(.system(size: 26, weight: .heavy, design: .monospaced))
                Spacer()
                
                //MARK: - Buy button
                Button {
                    isPresent = false
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 11)
                            .foregroundStyle(.yellowApp)
                        HStack {
                            Text("BUY")
                            Image(.coin)
                                .resizable()
                                .frame(width: 40, height: 40)
                            Text(bonus == "alarm" ? "300" : "400")
                        }
                    }
                    .foregroundStyle(.white)
                    .font(.system(size: 26, weight: .heavy, design: .monospaced))
                    .frame(width: 193, height: 58)
                }

            }
            .padding(.vertical)
        }
    }
}

#Preview {
    BuyBonusView(isPresent: .constant(true))
}
