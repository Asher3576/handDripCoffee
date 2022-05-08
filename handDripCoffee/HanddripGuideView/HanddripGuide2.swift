//
//  HanddripGuide2.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/05/02.
//

import SwiftUI

struct HanddripGuide2: View {
    @State var nextGuide3 = false
    @State var backGuide = false
    
    var body: some View {
        if nextGuide3 == true {
            HanddripGuide3()
        } else {
            if backGuide == true {
                HanddripGuide()
            }else{
                VStack{
                    HStack{
                        Button(action: {
                            withAnimation{
                                backGuide.toggle()
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
                            Image("CoffeebeanOpen")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 200.0, height: 200.0)
                                .padding(.vertical, 20.0)
                            
                            HStack{
                                
                                VStack{
                                    Image("LowRoasting")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 103.0, height: 103.0)
                                    Text("라이트 로스팅")
                                        .font(.callout)
                                        .fontWeight(.bold)
                                    Text("조금 더 곱게")
                                        .foregroundColor(Color.body)
                                        .font(.caption)
                                }
                                
                                VStack{
                                    Image("MiddleRoasting")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 103.0, height: 103.0)
                                    Text("미디엄 로스팅")
                                        .font(.callout)
                                        .fontWeight(.bold)
                                    Text("굵은소금 사이즈")
                                        .foregroundColor(Color.body)
                                        .font(.caption)
                                }
                                
                                VStack{
                                    Image("DarkRoasting")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 103.0, height: 103.0)
                                    Text("다크 로스팅")
                                        .font(.callout)
                                        .fontWeight(.bold)
                                    Text("조금 더 굵게")
                                        .foregroundColor(Color.body)
                                        .font(.caption)
                                }
                            }
                            HStack{
                                Text("원두 분쇄도를 설정해 주세요.\n미디엄 로스팅은 소금보다 정도의 크기를 추천합니다.\n원두의 양은 1:10 비율을 추천합니다.\n1인분 기준 20g을 준비해주세요.")
                                    .font(.caption)
                                    .fontWeight(.regular)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal)
                                    .lineSpacing(10)
                                Spacer()
                            }
                            .frame(width: 340.0, height: 130.0)
                            .background(Color.grayC5.opacity(0.3))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .padding(.top)
                        }
                    }//z스텍 끝
                    VStack {
                        Spacer()
                        
                        Button(action: {
                            withAnimation{
                                nextGuide3.toggle()
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
            }
            
        }
        
    }
}

struct HanddripGuide2_Previews: PreviewProvider {
    static var previews: some View {
        HanddripGuide2()
    }
}
