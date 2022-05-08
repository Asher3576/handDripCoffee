//
//  HanddripGuide3.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/05/02.
//

import SwiftUI

struct HanddripGuide3: View {
    @State var nextGuide4 = false
    @State var backGuide2 = false
    
    var body: some View {
        if nextGuide4 == true {
            HanddripGuide4()
        } else {
            if backGuide2 == true {
                HanddripGuide2()
            }else{
                VStack{
                    HStack{
                        Button(action: {
                            withAnimation{
                                backGuide2.toggle()
                            }
                        }) {
                            Image(systemName: "chevron.backward")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .padding(.leading,25)
                                .foregroundColor(.black)
                        }
                        Spacer()
                    }
                    
                    ZStack{
                        LottieView(filename: "lf30_editor_s11lodtv")
                            .frame(width: 200, height: 200)
                            .offset(x: 0, y: -250)
                        VStack{
                            
                            Image("DripPot")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 200.0, height: 200.0)
                                .padding(.vertical, 20.0)
                                .padding(.top,100)
                            
                            HStack{
                                Text("80 ~ 90도의 온도가 가장 적절합니다.")
                                    .font(.caption)
                                    .fontWeight(.regular)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal)
                                    .lineSpacing(10)
                                Spacer()
                            }
                            .frame(width: 340.0, height: 48.0)
                            .background(Color.grayC5.opacity(0.3))
                            .clipShape(RoundedRectangle(cornerRadius: 24))
                            
                            HStack {
                                Text("커피포트의 물이 끓으면\n약 1분 간 식혀 주세요.")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .padding([.top, .leading])
                                Spacer()
                            }
                            
                            ProgressView(value: 0)
                                .padding([.top, .leading, .trailing])
                            
                            
                            Spacer()
                        }
                        VStack {
                            Spacer()
                            
                            Button(action: {
                                withAnimation{
                                    nextGuide4.toggle()
                                }
                            }) {
                                HStack{
                                    Text("식히기")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .frame(width: 222.0, height: 50.0)
                                        .background(Color.waterred)
                                        .clipShape(RoundedRectangle(cornerRadius: 25))
                                }
                            }
                        }
                    }//z스텍 끝
                }
            }
        }
    }
}

struct HanddripGuide3_Previews: PreviewProvider {
    static var previews: some View {
        HanddripGuide3()
    }
}
