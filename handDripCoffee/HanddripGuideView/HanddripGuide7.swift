//
//  HanddripGuide7.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/05/02.
//

import SwiftUI

struct HanddripGuide7: View {
    @State var nextGuide8 = false
    @State var backGuide6 = false
    
    var body: some View {
        if nextGuide8 == true {
            HanddripGuide8()
        } else {
            if backGuide6 == true {
                HanddripGuide6()
            }else{
                VStack{
                    HStack{
                        Button(action: {
                            withAnimation{
                                backGuide6.toggle()
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
                                Text("여과지에 물이 닿지 않게,\n500원 크기만큼 돌리며 브루잉 해주세요.")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .padding([.top, .leading])
                                Spacer()
                            }
                            HStack{
                                Text("최대한 벽면에 닿지 않고 원두층이 많은 가운데를 추출하세요.")
                                    .font(.caption)
                                    .fontWeight(.regular)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .lineLimit(1)
                                    .padding(.leading)
                                    .lineSpacing(10)
                                Spacer()
                            }
                            .frame(width: 340.0, height: 48.0)
                            .background(Color.grayC5.opacity(0.3))
                            .clipShape(RoundedRectangle(cornerRadius: 24))
                            
                            Image("Rotate")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 200.0, height: 100.0)
                                .padding(.top, 80.0)
                                .padding(.bottom,-40)
                            
                            Image("Coin")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 200.0, height: 100.0)
                                .padding(.top, 50.0)
                            
                            Spacer()
                            
                        }
                        
                        
                        ZStack{
                            VStack{
                                Spacer()
                                Image("Dripper")
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 390.0, height: 390.0)
                                    .ignoresSafeArea(.all)
                                    .offset(x: 0, y: 205)
                            }
                            VStack {
                                Spacer()
                                Button(action: {
                                    withAnimation{
                                        nextGuide8.toggle()
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
                            
                        }
                    }//z스텍 끝
                    
                }
            }
        }
    }
}

struct HanddripGuide7_Previews: PreviewProvider {
    static var previews: some View {
        HanddripGuide7()
    }
}
