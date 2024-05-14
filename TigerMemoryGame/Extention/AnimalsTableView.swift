//
//  AnimalsTableView.swift
//  TigerMemoryGame
//
//  Created by Роман on 14.05.2024.
//

import SwiftUI

struct AnimalsTableView: View {
    var body: some View {
        VStack{
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(.tigertable)
                        .resizable()
                }).frame(width: 105, height: 105)
                Button(action: {}, label: {
                    Image(.crocodile)
                        .resizable()
                }).frame(width: 105, height: 105)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(.sheep)
                        .resizable()
                }).frame(width: 105, height: 105)
            }
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(.bull)
                        .resizable()
                }).frame(width: 105, height: 105)
                Button(action: {}, label: {
                    Image(.chicken)
                        .resizable()
                }).frame(width: 105, height: 105)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(.reccoon)
                        .resizable()
                }).frame(width: 105, height: 105)
            }
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(.parrot)
                        .resizable()
                }).frame(width: 105, height: 105)
                Button(action: {}, label: {
                    Image(.snake)
                        .resizable()
                }).frame(width: 105, height: 105)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(.cow)
                        .resizable()
                }).frame(width: 105, height: 105)
            }
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(.giraffe)
                        .resizable()
                }).frame(width: 105, height: 105)
                Button(action: {}, label: {
                    Image(.hare)
                        .resizable()
                }).frame(width: 105, height: 105)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(.pig)
                        .resizable()
                }).frame(width: 105, height: 105)
            }
        }
    }
}

#Preview {
    AnimalsTableView()
}
