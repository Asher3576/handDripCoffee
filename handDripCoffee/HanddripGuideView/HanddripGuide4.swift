//
//  HanddripGuide4.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/05/02.
//

import SwiftUI

struct HanddripGuide4: View {
    @State var nextGuide5 = false
    @State var backGuide3 = false
    @State private var downloadAmount = 0.0
    let timer = Timer.publish(every: 0.001, on: .main, in: .common).autoconnect()
    
    var body: some View {
        if nextGuide5 == true {
            HanddripGuide5()
        } else {
            if backGuide3 == true {
                HanddripGuide3()
            }else{
                VStack{
                    HStack{
                        Button(action: {
                            withAnimation{
                                backGuide3.toggle()
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
                                Text("아래의 게이지가\n채워질 때 까지 기다려 주세요.")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .padding([.top, .leading])
                                Spacer()
                            }
                            
                            HStack{
                                ProgressView(value: downloadAmount, total: 60000)
                                    .progressViewStyle(LinearProgressViewStyle(tint: .waterblue))
                                    .padding([.top, .leading, .trailing])
                                Spacer()
                            }
                            .onReceive(timer) { _ in
                                        //만약 downloadAmount가 100보다 작다면 실행
                                        //total값 보다 작아야함
                                        if downloadAmount < 60000 {
                                            downloadAmount += 1
                                        }
                                    }
                            
                            
                            Spacer()
                        }
                        VStack {
                            Spacer()
                            Button(action: {
                                withAnimation{
                                    nextGuide5.toggle()
                                }
                            }) {
                                HStack{
                                    Text("다음")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .frame(width: 222.0, height: 50.0)
                                        .background(Color.waterblue)
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

struct HanddripGuide4_Previews: PreviewProvider {
    static var previews: some View {
        HanddripGuide4()
    }
}
