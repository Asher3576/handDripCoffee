//
//  HanddripGuide8.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/05/02.
//

import SwiftUI

struct HanddripGuide8: View {
    @State private var downloadAmount8 = 0.0
    @State var nextGuide9 = false
    @State var backGuide7 = false
    @State var toggle = false
    @State var isAppear = false
    let timer8 = Timer.publish(every: 0.001, on: .main, in: .common).autoconnect()
    var body: some View {
        
        if isAppear {
            withAnimation {
                HanddripGuide9()
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
                                ProgressView(value: downloadAmount8, total: 30000)
                                    .progressViewStyle(LinearProgressViewStyle(tint: .waterblue))
                                    .padding([.leading, .trailing])
                                    .frame(width: 260)
                                Spacer()
                            }
                            .onReceive(timer8) { _ in
                                //만약 downloadAmount가 100보다 작다면 실행
                                //total값 보다 작아야함
                                if downloadAmount8 < 30000 {
                                    downloadAmount8 += 1
                                    
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
                    DispatchQueue.main.asyncAfter(deadline: .now()+30) {
                        isAppear = true
                    }
                }
            }
        }
        
    }
    }

struct HanddripGuide8_Previews: PreviewProvider {
    static var previews: some View {
        HanddripGuide8()
    }
}

/*
 
 struct WaveForm: View{
 
 // Custom Color....
 var color: Color
 var amplify: CGFloat
 // reverse motion...
 var isReversed: Bool
 
 var body: some View{
 
 // Using Time Line View for peroidc Updates....
 
 TimelineView(.animation) { timeLine in
 
 // Canvas View for drawing Wave...
 Canvas{context,size in
 
 // getting Current Time...
 let timeNow = timeLine.date.timeIntervalSinceReferenceDate
 
 // animating the wave using current time...
 let angle = timeNow.remainder(dividingBy: 2)
 
 // calculating offset....
 let offset = angle * size.width
 
 // you can see it now shifts to screen width...
 
 // you can see it moves between -1.5 - 1.5....
 // ie 3/2 = 1.5
 // if 2 means -1 to 1.....
 
 // moving the whole view....
 // simple and easy wave animation....
 context.translateBy(x: isReversed ? -offset : offset, y: 0)
 
 // Using SwiftUI Path for drawing wave....
 context.fill(getPath(size: size), with: .color(color))
 // drawing curve front and back
 // so that tranlation will be look like wave animation....
 context.translateBy(x: -size.width, y: 0)
 
 context.fill(getPath(size: size), with: .color(color))
 
 context.translateBy(x: size.width * 2, y: 0)
 
 context.fill(getPath(size: size), with: .color(color))
 }
 }
 }
 
 func getPath(size: CGSize)->Path{
 
 return Path{path in
 
 let midHeight = size.height / 2
 
 let width = size.width
 
 // moving the wave to center leading....
 path.move(to: CGPoint(x: 0, y: midHeight))
 
 // drawing curve....
 
 // For bottom....
 path.addCurve(to: CGPoint(x: width, y: midHeight), control1: CGPoint(x: width * 0.4, y: midHeight + amplify), control2: CGPoint(x: width * 0.65, y: midHeight - amplify))
 
 // filling the bottom remaining area...
 path.addLine(to: CGPoint(x: width, y: size.height))
 path.addLine(to: CGPoint(x: 0, y: size.height))
 
 }
 }
 }
 
 */
