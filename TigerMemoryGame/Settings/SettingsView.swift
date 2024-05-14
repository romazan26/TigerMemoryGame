//
//  SettingsView.swift
//  TigerMemoryGame
//
//  Created by Роман on 13.05.2024.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            //MARK: - Toolbar
            HStack{
                Spacer()
                Button {
                    dismiss()
                } label: {
                    Image(.settings)
                        .resizable()
                        .frame(width: 87, height: 87)
                }
            }.padding()
            
            Spacer()
            
            //MARK: - Setting buttons
            Button(action: {}, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 11).foregroundStyle(.yellowApp)
                    Text("SOUND: ON")
                }.frame(width: 257, height: 58)
            })
            Button(action: {}, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 11).foregroundStyle(.yellowApp)
                    Text("VIBRAYION: ON")
                }.frame(width: 257, height: 58)
            })
            Button(action: {}, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 11).foregroundStyle(.yellowApp)
                    Text("PRIVACY POLICY")
                }.frame(width: 257, height: 58)
            })
            Button(action: {}, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 11).foregroundStyle(.yellowApp)
                    Text("TERMS OF USE")
                }.frame(width: 257, height: 58)
            })
            Spacer()
        }
        .foregroundStyle(.white)
        .font(.system(size: 25, weight: .heavy, design: .monospaced))
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
    SettingsView()
}
