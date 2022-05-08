//
//  HanddripGuide12.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/05/04.
//

import SwiftUI

struct HanddripGuide11: View {
    @State private var downloadAmount11 = 0.0
    @State var backGuide7 = false
    @State var isAppear = false
    let timer11 = Timer.publish(every: 0.001, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        if isAppear {
            withAnimation {
                HanddripGuide12()
            }
        }
        
        else if backGuide7 == true {
            HanddripGuide7()
        } else {
            VStack{
                HStack{
                    Button(action: {
                        withAnimation{
                            backGuide7.toggle()
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
                    VStack{
                        HStack {
                            Text("그리고, 30초 간 뜸을들여,\n커피를 추출합니다.")
                                .font(.title2)
                                .fontWeight(.heavy)
                                .padding([.top, .leading])
                            Spacer()
                        }
                        HStack{
                            ProgressView(value: downloadAmount11, total: 30000)
                                .progressViewStyle(LinearProgressViewStyle(tint: .waterblue))
                                .padding([.leading, .trailing])
                                .frame(width: 260)
                            Spacer()
                        }
                        .onReceive(timer11) { _ in
                            //만약 downloadAmount가 100보다 작다면 실행
                            //total값 보다 작아야함
                            if downloadAmount11 < 30000 {
                                downloadAmount11 += 1
                                
                            }
                        }
                        
                        
                        
                        
                        
                        ZStack{
                            Image("DripPot")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 300.0, height: 300.0)
                                .ignoresSafeArea(.all)
                                .padding(.vertical, 20.0)
                                .rotationEffect(Angle.degrees(-15))
                                .offset(x: 235, y: -150)
                            
                            LottieView(filename: "lf30_editor_s11lodtv")
                                .frame(width: 400, height: 400)
                                .offset(x: -20, y: 70)
                        }
                        
                        
                        Spacer()
                        
                        
                        
                    }
                    .background(
                        ZStack{
                            VStack{
                                Image("CleaningServer")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 415, height: 415)
                                    .ignoresSafeArea(.all)
                                    .offset(x: 15, y: 215)
                            }
                        }
                    )
                    
                    
                }//z스텍 끝
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now()+5) {
                    isAppear = true
                }
            }
        }
    }
}

struct HanddripGuide12_Previews: PreviewProvider {
    static var previews: some View {
        HanddripGuide11()
    }
}
