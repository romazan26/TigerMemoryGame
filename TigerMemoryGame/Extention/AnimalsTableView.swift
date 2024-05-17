//
//  AnimalsTableView.swift
//  TigerMemoryGame
//
//  Created by Роман on 14.05.2024.
//

import SwiftUI

struct AnimalsTableView: View {
    
    @StateObject var viewModel: GameViewModel
     @State var tagAimals = 0
    @State private var disableButton = true
    
    var body: some View {
        VStack{
            HStack{
                //MARK: - Tiger
                Button(action: {
                    if viewModel.checkAnimal1 {
                        viewModel.tabAnswerTag = 1
                        viewModel.addAnswer()
                    }
                }, label: {
                        if tagAimals == 1 || viewModel.checkAnimal1{
                            Image(.tigertable)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal1 = true
                                })
                        
                    }
                }).frame(width: 105, height: 105)
                    .disabled(disableButton ? true : false)
                
                //MARK: - crocodile
                Button(action: {
                    if viewModel.checkAnimal2 {
                        viewModel.tabAnswerTag = 2
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 2 || viewModel.checkAnimal2{
                        Image(.crocodile)
                            .resizable()
                            .onAppear(perform: {
                                viewModel.checkAnimal2 = true
                            })
                    }
                }).frame(width: 105, height: 105)
                    .disabled(disableButton ? true : false)
                
                Button(action: {
                    if viewModel.checkAnimal3 {
                        viewModel.tabAnswerTag = 3
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 3 || viewModel.checkAnimal3{
                        Image(.sheep)
                            .resizable()
                            .onAppear(perform: {
                                viewModel.checkAnimal3 = true
                            })
                    }
                }).frame(width: 105, height: 105)
                    .disabled(disableButton ? true : false)
                
            }
            HStack{
                Button(action: {
                    if viewModel.checkAnimal4 {
                        viewModel.tabAnswerTag = 4
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 4 || viewModel.checkAnimal4{
                        Image(.bull)
                            .resizable()
                            .onAppear(perform: {
                                viewModel.checkAnimal4 = true
                            })
                    }
                }).frame(width: 105, height: 105)
                    .disabled(disableButton ? true : false)
                
                Button(action: {
                    if viewModel.checkAnimal5 {
                        viewModel.tabAnswerTag = 5
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 5 || viewModel.checkAnimal5{
                        Image(.chicken)
                            .resizable()
                            .onAppear(perform: {
                                viewModel.checkAnimal5 = true
                            })
                    }
                }).frame(width: 105, height: 105)
                    .disabled(disableButton ? true : false)
                
                Button(action: {
                    if viewModel.checkAnimal6 {
                        viewModel.tabAnswerTag = 6
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 6 || viewModel.checkAnimal6{
                        Image(.reccoon)
                            .resizable()
                            .onAppear(perform: {
                                viewModel.checkAnimal6 = true
                            })
                    }
                }).frame(width: 105, height: 105)
                    .disabled(disableButton ? true : false)
                
            }
            HStack{
                Button(action: {
                    if viewModel.checkAnimal7 {
                        viewModel.tabAnswerTag = 7
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 7 || viewModel.checkAnimal7{
                        Image(.parrot)
                            .resizable()
                            .onAppear(perform: {
                                viewModel.checkAnimal7 = true
                            })
                    }
                }).frame(width: 105, height: 105)
                    .disabled(disableButton ? true : false)
                
                Button(action: {
                    if viewModel.checkAnimal8 {
                        viewModel.tabAnswerTag = 8
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 8 || viewModel.checkAnimal8{
                        Image(.snake)
                            .resizable()
                            .onAppear(perform: {
                                viewModel.checkAnimal8 = true
                            })
                    }
                }).frame(width: 105, height: 105)
                    .disabled(disableButton ? true : false)
                
                Button(action: {
                    if viewModel.checkAnimal9 {
                        viewModel.tabAnswerTag = 9
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 9 || viewModel.checkAnimal9{
                        Image(.cow)
                            .resizable()
                            .onAppear(perform: {
                                viewModel.checkAnimal9 = true
                            })
                    }
                }).frame(width: 105, height: 105)
                    .disabled(disableButton ? true : false)
                
            }
            HStack{
                Button(action: {
                    if viewModel.checkAnimal10 {
                        viewModel.tabAnswerTag = 10
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 10 || viewModel.checkAnimal10{
                        Image(.giraffe)
                            .resizable()
                            .onAppear(perform: {
                                viewModel.checkAnimal10 = true
                            })
                    }
                }).frame(width: 105, height: 105)
                    .disabled(disableButton ? true : false)
                
                Button(action: {
                    if viewModel.checkAnimal11 {
                        viewModel.tabAnswerTag = 11
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 11 || viewModel.checkAnimal11{
                        Image(.hare)
                            .resizable()
                            .onAppear(perform: {
                                viewModel.checkAnimal11 = true
                            })
                    }
                }).frame(width: 105, height: 105)
                    .disabled(disableButton ? true : false)
                
                Button(action: {
                    if viewModel.checkAnimal12 {
                        viewModel.tabAnswerTag = 12
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 12 || viewModel.checkAnimal12{
                        Image(.pig)
                            .resizable()
                            .onAppear(perform: {
                                viewModel.checkAnimal12 = true
                            })
                    }
                }).frame(width: 105, height: 105)
                    .disabled(disableButton ? true : false)
                
            }
        }
        .animation(.easeIn, value: tagAimals)
        .onAppear(perform: {
            print(viewModel.levelRules[viewModel.chooseLevel])
            
            //MARK: - TimerGet Animals
            var i = 0
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                if i < viewModel.levelRules[viewModel.chooseLevel].rule.count {
                    tagAimals = viewModel.levelRules[viewModel.chooseLevel].rule[i]
                    i += 1
                    disableButton = true
                } else{
                    viewModel.startTimer()
                    timer.invalidate()
                    disableButton = false
                }
            }
        })
    }
}

#Preview {
    AnimalsTableView(viewModel: GameViewModel())
}
