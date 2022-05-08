//
//  HanddripGuide10.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/05/02.
//

import SwiftUI

struct HanddripGuideLast: View {
    @State var isCanceled = false
    @State var backGuide7 = false
    var body: some View {
        if isCanceled == true {
            ContentView()
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
                        VStack{
                            HStack {
                                Text("완성 되었습니다.\n")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .padding([.top, .leading])
                                Spacer()
                            }
                            HStack{
                                Text("뜨거운 물 100g~150g 정도를 추가하여 기호에 맞게 드세요.")
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
                            
                            Spacer()
                            Image("Cup")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .padding([.top, .trailing])
                                .frame(width: 350.0, height: 350.0)
                            
                            
                            Spacer()
                            
                        }
                        
                        
                        ZStack{
                            VStack {
                                Spacer()
                                Button(action: {
                                    withAnimation{
                                        isCanceled.toggle()
                                    }
                                }) {
                                    HStack{
                                        Text("나기기")
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

struct HanddripGuide10_Previews: PreviewProvider {
    static var previews: some View {
        HanddripGuideLast()
    }
}
