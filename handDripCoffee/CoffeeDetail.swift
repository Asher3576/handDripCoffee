//
//  CoffeeDetail.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/05/05.
//

import SwiftUI

struct CoffeeDetail: View {
    var cardItem: CoffeeInfo = coffeeInfos[0]
    var body: some View {
        NavigationView{
            VStack{
                HStack(alignment: .top) {
                    NavigationLink {
                        ContentView()
                            .navigationBarHidden(true)
                    } label: {
                        Image(systemName: "chevron.backward")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                            .padding(.trailing,25)
                            .foregroundColor(.black)
                    }
                    Spacer()
                    VStack(alignment: .center, spacing: 12) {
                        Text(cardItem.title)
                            .font(.title3).bold()
                            .foregroundColor(.black)
                        Text(cardItem.subtitle)
                            .font(.subheadline)
                            .foregroundColor(Color.body)
                            .multilineTextAlignment(.center)
                            .opacity(0.8)
                    }
                    Spacer()
                    VStack(spacing: 0.0){
                        Text("score")
                            .foregroundColor(.white)
                        Text(cardItem.score)
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    .frame(width: 60.0, height: 60.0)
                    .background(Color.waterblue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding(.horizontal)
//                HStack{
//                    NavigationLink {
//                        ContentView()
//                            .navigationBarHidden(true)
//                    } label: {
//                        Image(systemName: "chevron.backward")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 25, height: 25)
//                            .padding(.leading,25)
//                            .foregroundColor(.black)
//                    }
//                    VStack{
//                        Text("")
//                    }
//                    Spacer()
//                }
                
                ZStack{
                    VStack{
                        HStack(alignment: .top) {
                            Text(cardItem.logo)
                                .font(.system(size: 80))
                                .fontWeight(.bold)
                                .padding(.all, 15)
                                .background(Color.waterblue.opacity(0.1))
                                .clipShape(Circle())
                        }
                        .padding(.top)
                        
                        HStack{
                            Text("인류와 커피의 발상지로 알려져 ‘모든 것이 시작된 곳’ 이라\n불리는 나라 에티오피아는 최초로 커피가 발견된 곳 답게 커피를\n재배하기에 완벽한 기후와 토양을 갖고 있습니다.\n에티오피아 커피는 다른 생산지와 확실히 차별되는 화려한 향미를\n가졌으며 오랜 역사만큼 품질도안정적입니다.")
                                .font(.caption)
                                .fontWeight(.regular)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal)
                                .lineSpacing(10)
                            Spacer()
                        }
                        .frame(width: 340.0, height: 180.0)
                        .background(Color.grayC5.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.top)
                        .padding(.bottom,30)
                        
                        HStack {
                            Text("NOTE")
                                .font(.title2)
                                .fontWeight(.heavy)
                                .padding([.top, .leading])
                                .padding(.bottom,-15)
                            Spacer()
                        }
                        
                        HStack{
                            
                            VStack{
                                Image("SweetPotato")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 80, height: 80)
                                    .padding(.all, 10)
                                    .background(Color.waterblue.opacity(0.1))
                                    .clipShape(Circle())
                                Text("군고구마")
                                    .foregroundColor(Color.body)
                                    .font(.callout)
                            }
                            
                            VStack{
                                Image("Grape")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 80, height: 80)
                                    .padding(.all, 10)
                                    .background(Color.waterblue.opacity(0.1))
                                    .clipShape(Circle())
                                Text("포도")
                                    .foregroundColor(Color.body)
                                    .font(.callout)
                            }
                            
                            VStack{
                                Image("Melon")
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 80, height: 80)
                                    .padding(.all, 10)
                                    .background(Color.waterblue.opacity(0.1))
                                    .clipShape(Circle())
                                Text("메론")
                                    .foregroundColor(Color.body)
                                    .font(.callout)
                            }
                        }
                        .padding(.top,20)
                        
                        Spacer()
                    }
                    ZStack{
                        VStack {
                            Spacer()
                            NavigationLink {
                                HanddripGuide()
                                    .navigationBarHidden(true)
                            } label: {
                                HStack{
                                    Image("DripPot2")
                                        .resizable()
                                        .frame(width: 25, height: 25)
                                    Text(" 핸드드립 따라하기")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                }
                                .frame(width: 222.0, height: 50.0)
                                .background(Color.waterblue)
                                .clipShape(RoundedRectangle(cornerRadius: 25))
                            }
                        }
                        
                    }
                }//z스텍 끝
            }
            .navigationBarHidden(true)
        }
    }}




struct CoffeeDetail_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeDetail()
    }
}
