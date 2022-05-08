//
//  HanddripGuide6.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/05/02.
//

import SwiftUI

struct HanddripGuide6: View {
    @State var nextGuide7 = false
    @State var backGuide5 = false
    
    var body: some View {
        if nextGuide7 == true {
            HanddripGuide7()
        } else {
            if backGuide5 == true {
                HanddripGuide5()
            }else{
                VStack{
                    HStack{
                        Button(action: {
                            withAnimation{
                                backGuide5.toggle()
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
                            HStack{
                                Image("Bean")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50.0, height: 50.0)
                                    .padding(.top, 50.0)
                            }
                            Image("Serverdef")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 200.0, height: 200.0)
                                .padding(.vertical, 20.0)
                                .offset(x: 15)
                            
                            HStack{
                                Text("린싱은 여과지의 불순물을 걸러주며, 잔을 데우는 효과가 있습니다.")
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
                            
                            HStack {
                                Text("드립 서버에 남아있는 물을 버리고,\n분쇄된 20g 원두를 넣어주세요.")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .padding([.top, .leading])
                                Spacer()
                            }
                            
                            
                            Spacer()
                        }
                        VStack {
                            Spacer()
                            Button(action: {
                                withAnimation{
                                    nextGuide7.toggle()
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

struct HanddripGuide6_Previews: PreviewProvider {
    static var previews: some View {
        HanddripGuide6()
    }
}
