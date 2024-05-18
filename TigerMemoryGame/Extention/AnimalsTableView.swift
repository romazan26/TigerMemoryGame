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
                        ZStack {
                            Image(.tigertable)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal1 = true
                            })
                            if viewModel.buyAnswer && viewModel.levelRules[viewModel.chooseLevel].rule[ viewModel.answerArray.count] == 1 {
                                Image(.tigertable)
                                    .resizable()
                                    .onAppear(perform: {
                                        viewModel.checkAnimal1 = true
                                })
                                .overlay {
                                    RoundedRectangle(cornerRadius: 11)
                                        .stroke(.white, lineWidth: 5)
                                }
                            }
                        }
                        
                    }
                }).frame(width: 105, height: 105)
                    .disabled(viewModel.disableButton ? true : false)
                
                //MARK: - crocodile
                Button(action: {
                    if viewModel.checkAnimal2 {
                        viewModel.tabAnswerTag = 2
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 2 || viewModel.checkAnimal2{
                        ZStack {
                            Image(.crocodile)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal2 = true
                            })
                            if viewModel.buyAnswer && viewModel.levelRules[viewModel.chooseLevel].rule[ viewModel.answerArray.count] == 2 {
                                Image(.crocodile)
                                    .resizable()
                                    .onAppear(perform: {
                                        viewModel.checkAnimal2 = true
                                })
                                .overlay {
                                    RoundedRectangle(cornerRadius: 11)
                                        .stroke(.white, lineWidth: 5)
                                }
                            }
                                
                        }
                    }
                }).frame(width: 105, height: 105)
                    .disabled(viewModel.disableButton ? true : false)
                
                //MARK: - sheep
                Button(action: {
                    if viewModel.checkAnimal3 {
                        viewModel.tabAnswerTag = 3
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 3 || viewModel.checkAnimal3{
                        ZStack{
                            Image(.sheep)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal3 = true
                                })
                            if viewModel.buyAnswer && viewModel.levelRules[viewModel.chooseLevel].rule[ viewModel.answerArray.count] == 3 {
                                Image(.sheep)
                                    .resizable()
                                    .onAppear(perform: {
                                        viewModel.checkAnimal3 = true
                                    })
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 11)
                                            .stroke(.white, lineWidth: 5)
                                    }
                            }
                        }
                    }
                }).frame(width: 105, height: 105)
                    .disabled(viewModel.disableButton ? true : false)
                
            }
            HStack{
                //MARK: - bull
                Button(action: {
                    if viewModel.checkAnimal4 {
                        viewModel.tabAnswerTag = 4
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 4 || viewModel.checkAnimal4{
                            if viewModel.buyAnswer && viewModel.levelRules[viewModel.chooseLevel].rule[ viewModel.answerArray.count] == 4 {
                                Image(.bull)
                                    .resizable()
                                    .onAppear(perform: {
                                        viewModel.checkAnimal4 = true
                                    })
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 11)
                                            .stroke(.white, lineWidth: 5)
                                    }
                            }else {
                                Image(.bull)
                                    .resizable()
                                    .onAppear(perform: {
                                        viewModel.checkAnimal4 = true
                                    })
                            }
                    }
                }).frame(width: 105, height: 105)
                    .disabled(viewModel.disableButton ? true : false)
                
                //MARK: - Chicken
                Button(action: {
                    if viewModel.checkAnimal5 {
                        viewModel.tabAnswerTag = 5
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 5 || viewModel.checkAnimal5{
                        if viewModel.buyAnswer && viewModel.levelRules[viewModel.chooseLevel].rule[ viewModel.answerArray.count] == 5 {
                            Image(.chicken)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal5 = true
                                })
                                .overlay {
                                    RoundedRectangle(cornerRadius: 11)
                                        .stroke(.white, lineWidth: 5)
                                }
                        }else {
                            Image(.chicken)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal5 = true
                                })
                        }
                    }
                }).frame(width: 105, height: 105)
                    .disabled(viewModel.disableButton ? true : false)
                
                //MARK: - Reccoon
                Button(action: {
                    if viewModel.checkAnimal6 {
                        viewModel.tabAnswerTag = 6
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 6 || viewModel.checkAnimal6{
                        if viewModel.buyAnswer && viewModel.levelRules[viewModel.chooseLevel].rule[ viewModel.answerArray.count] == 6 {
                            Image(.reccoon)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal6 = true
                                })
                                .overlay {
                                    RoundedRectangle(cornerRadius: 11)
                                        .stroke(.white, lineWidth: 5)
                                }
                        }else {
                            Image(.reccoon)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal6 = true
                                })
                        }
                    }
                }).frame(width: 105, height: 105)
                    .disabled(viewModel.disableButton ? true : false)
                
            }
            HStack{
                //MARK: - Parrot
                Button(action: {
                    if viewModel.checkAnimal7 {
                        viewModel.tabAnswerTag = 7
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 7 || viewModel.checkAnimal7{
                        if viewModel.buyAnswer && viewModel.levelRules[viewModel.chooseLevel].rule[ viewModel.answerArray.count] == 7 {
                            Image(.parrot)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal7 = true
                                })
                                .overlay {
                                    RoundedRectangle(cornerRadius: 11)
                                        .stroke(.white, lineWidth: 5)
                                }
                        }else {
                            Image(.parrot)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal7 = true
                                })
                        }
                    }
                }).frame(width: 105, height: 105)
                    .disabled(viewModel.disableButton ? true : false)
                
                //MARK: - Snake
                Button(action: {
                    if viewModel.checkAnimal8 {
                        viewModel.tabAnswerTag = 8
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 8 || viewModel.checkAnimal8{
                        if viewModel.buyAnswer && viewModel.levelRules[viewModel.chooseLevel].rule[ viewModel.answerArray.count] == 8 {
                            Image(.snake)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal8 = true
                                })
                                .overlay {
                                    RoundedRectangle(cornerRadius: 11)
                                        .stroke(.white, lineWidth: 5)
                                }
                        }else {
                            Image(.snake)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal8 = true
                                })
                        }
                    }
                }).frame(width: 105, height: 105)
                    .disabled(viewModel.disableButton ? true : false)
                
                //MARK: - Cow
                Button(action: {
                    if viewModel.checkAnimal9 {
                        viewModel.tabAnswerTag = 9
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 9 || viewModel.checkAnimal9{
                        if viewModel.buyAnswer && viewModel.levelRules[viewModel.chooseLevel].rule[ viewModel.answerArray.count] == 9 {
                            Image(.cow)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal9 = true
                                })
                                .overlay {
                                    RoundedRectangle(cornerRadius: 11)
                                        .stroke(.white, lineWidth: 5)
                                }
                        }else {
                            Image(.cow)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal9 = true
                                })
                        }
                    }
                }).frame(width: 105, height: 105)
                    .disabled(viewModel.disableButton ? true : false)
                
            }
            HStack{
                //MARK: - Giraffe
                Button(action: {
                    if viewModel.checkAnimal10 {
                        viewModel.tabAnswerTag = 10
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 10 || viewModel.checkAnimal10{
                        if viewModel.buyAnswer && viewModel.levelRules[viewModel.chooseLevel].rule[ viewModel.answerArray.count] == 10 {
                            Image(.giraffe)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal10 = true
                                })
                                .overlay {
                                    RoundedRectangle(cornerRadius: 11)
                                        .stroke(.white, lineWidth: 5)
                                }
                        }else {
                            Image(.giraffe)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal10 = true
                                })
                        }
                    }
                }).frame(width: 105, height: 105)
                    .disabled(viewModel.disableButton ? true : false)
                
                //MARK: - Hare
                Button(action: {
                    if viewModel.checkAnimal11 {
                        viewModel.tabAnswerTag = 11
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 11 || viewModel.checkAnimal11{
                        if viewModel.buyAnswer && viewModel.levelRules[viewModel.chooseLevel].rule[ viewModel.answerArray.count] == 11 {
                            Image(.hare)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal11 = true
                                })
                                .overlay {
                                    RoundedRectangle(cornerRadius: 11)
                                        .stroke(.white, lineWidth: 5)
                                }
                        }else {
                            Image(.hare)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal11 = true
                                })
                        }
                    }
                }).frame(width: 105, height: 105)
                    .disabled(viewModel.disableButton ? true : false)
                
                //MARK - Pig
                Button(action: {
                    if viewModel.checkAnimal12 {
                        viewModel.tabAnswerTag = 12
                        viewModel.addAnswer()
                    }
                }, label: {
                    if tagAimals == 12 || viewModel.checkAnimal12{
                        if viewModel.buyAnswer && viewModel.levelRules[viewModel.chooseLevel].rule[ viewModel.answerArray.count] == 12 {
                            Image(.pig)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal6 = true
                                })
                                .overlay {
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(.white, lineWidth: 5)
                                }
                        }else {
                            Image(.pig)
                                .resizable()
                                .onAppear(perform: {
                                    viewModel.checkAnimal12 = true
                                })
                        }
                    }
                }).frame(width: 105, height: 105)
                    .disabled(viewModel.disableButton ? true : false)
                
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
                    viewModel.disableButton = true
                } else{
                    viewModel.startTimer()
                    timer.invalidate()
                    viewModel.disableButton = false
                }
            }
        })
    }
}

#Preview {
    AnimalsTableView(viewModel: GameViewModel())
}
