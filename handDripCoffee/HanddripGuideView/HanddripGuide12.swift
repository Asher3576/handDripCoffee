//
//  HanddripGuide13.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/05/04.
//

import SwiftUI

struct HanddripGuide12: View {
    @State private var downloadAmount12 = 0.0
    @State var nextGuide13 = false
    @State var backGuide7 = false
    @State var toggle = false
    @State var isAppear = false
    let timer12 = Timer.publish(every: 0.001, on: .main, in: .common).autoconnect()
    var body: some View {
        
        if isAppear {
            withAnimation {
                HanddripGuide13()
            }
        } else {
            if backGuide7 == true {
                HanddripGuide7()
            }else{
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
                        ZStack{
                            LottieView2(filename: "lf30_editor_hhraccf4")
                                .frame(width: 200, height: 200)
                                .offset(x: 30, y: -20)
                        }
                        VStack{
                            HStack {
                                Text("일정하게 40ml의 물을\n브루잉 해주세요.")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .padding([.top, .leading])
                                Spacer()
                            }
                            HStack{
                                ProgressView(value: downloadAmount12, total: 20000)
                                    .progressViewStyle(LinearProgressViewStyle(tint: .waterblue))
                                    .padding([.leading, .trailing])
                                    .frame(width: 260)
                                Spacer()
                            }
                            .onReceive(timer12) { _ in
                                //만약 downloadAmount가 100보다 작다면 실행
                                //total값 보다 작아야함
                                if downloadAmount12 < 20000 {
                                    downloadAmount12 += 1
                                    
                                }
                            }
                            
                            ZStack{
                                Image("DripPot")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 300.0, height: 300.0)
                                    .ignoresSafeArea(.all)
                                    .padding(.vertical, 20.0)
                                    .rotationEffect(Angle.degrees(-45))
                                    .offset(x: 160, y: -70)
                            }
                            
                            
                            
                            
                            Spacer()
                        }
                        .background(
                            VStack{
                                Image("Server")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 330, height: 330)
                                    .ignoresSafeArea(.all)
                                    .offset(x: 20, y: 290)
                                
                            }
                        )
                        ZStack{
                            LottieView1(filename: "lf20_jUaIOT")
                                .frame(width: 380, height: 380)
                                .offset(x: -18, y: 350)
                            
                            // Wave Form View....
                            //                            WaveForm(color: .cyan.opacity(0.8),amplify: 150,isReversed: false)
                            //
                            //                            WaveForm(color: (toggle ? Color.purple : Color.cyan).opacity(0.6),amplify: 140,isReversed: true)
                            
                        }
                        
                        ZStack{
                            VStack{
                                Image("Server2")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 263, height: 263)
                                    .ignoresSafeArea(.all)
                                    .offset(x: -21, y: 290)
                            }
                        }
                        
                        ZStack{
                            VStack{
                                Image("Dripper-1")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 250, height: 250)
                                    .ignoresSafeArea(.all)
                                    .offset(x: -20, y: 133)
                            }
                        }
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
}

struct HanddripGuide13_Previews: PreviewProvider {
    static var previews: some View {
        HanddripGuide12()
    }
}
