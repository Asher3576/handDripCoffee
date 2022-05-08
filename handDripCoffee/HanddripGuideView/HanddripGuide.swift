//
//  HanddripGuide.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/05/02.
//

import SwiftUI

struct HanddripGuide: View {
    
//    @State var index: Int = 0
    @State var isStarted = false
    @State var isCanceled = false
    
    var body: some View {
        if isStarted == true {
            HanddripGuide2()
        } else {
            if isCanceled == true {
                ContentView()
            }else{
                ZStack{
                    ScrollView{
                        VStack{
                            HStack{
                                Text("Step1. 취향에 맞는\n원두 준비")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .padding([.top, .leading])
                                Spacer()
                                
                            }
                            Image("Coffeebean")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150.0, height: 150.0)
                            
                            VStack(spacing: 0.0){
                                HStack{
                                    Text("자기 취향에 맞는 로스팅이 된 원두를 준비해 주세요.\n스페셜 커피 리스트를 참고하시어 자신에게 맞는 커피를\n찾아보세요!")
                                        .font(.caption)
                                        .fontWeight(.regular)
                                        .foregroundColor(.black)
                                        .multilineTextAlignment(.leading)
                                        .padding(.horizontal)
                                        .lineSpacing(10)
                                    Spacer()
                                }
                            }
                            .frame(width: 340.0, height: 100.0)
                            .background(Color.grayC5.opacity(0.3))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .padding(.top)
                            
                            HStack{
                                Text("Step2. 용품 준비")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .padding([.top, .leading])
                                Spacer()
                            }
                            
                            Image("DripPot2")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150.0, height: 150.0)
                            Spacer()
                            
                            HStack{
                                VStack(alignment: .leading) {
                                    Text("핸드드립에 필요한 용품을 준비해 주세요.")
                                        .font(.caption)
                                        .fontWeight(.bold)
                                        .foregroundColor(.caption)
                                        .multilineTextAlignment(.leading)
                                        .padding(.horizontal)
                                        .lineSpacing(10)
                                    
                                    Text("-서버\n-드리퍼\n-드립포트\n-여과지\n-그라인더\n-잔\n\n\n\n")
                                        .font(.caption)
                                        .fontWeight(.regular)
                                        .foregroundColor(.caption)
                                        .multilineTextAlignment(.leading)
                                        .padding(.horizontal)
                                        .lineSpacing(10)
                                        .padding(.top)
                                    
                                    Spacer()
                                }
                                Spacer()
                            }
                            .padding(.top)
                        }
                    }//스크롤뷰
                    
                    VStack {
                        Spacer()
                        
                        HStack{
                            
                            Button(action: {
                                withAnimation{
                                    isCanceled.toggle()
                                }
                            }) {
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(.white)
                                .frame(width: 103.0, height: 50.0)
                                .background(Color.cancel)
                                .clipShape(RoundedRectangle(cornerRadius: 25))
                            }
                            
                            Button(action: {
                                withAnimation{
                                    isStarted.toggle()
                                }
                            }) {
                                Text("다음")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(width: 222.0, height: 50.0)
                                    .background(Color.waterblue)
                                    .clipShape(RoundedRectangle(cornerRadius: 25))
                            }
                            
                            
//                            Button {
//                                index += 1
//                            } label: {
//                                Text("다음")
//                                    .font(.headline)
//                                    .fontWeight(.bold)
//                                    .foregroundColor(.white)
//                                    .frame(width: 222.0, height: 50.0)
//                                    .background(Color.waterblue)
//                                    .clipShape(RoundedRectangle(cornerRadius: 25))
//                            }
                        }
                    }
                }
                //zstack 끝
            }
        }
    }
    
}

struct HanddripGuide_Previews: PreviewProvider {
    static var previews: some View {
        HanddripGuide()
    }
}
