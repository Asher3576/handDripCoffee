//
//  ContentView.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/04/28.
//

import SwiftUI

struct ContentView: View {
    @State var show = true
    @State var items = coffeeInfos
    @State var appear = false
    @State private var selectedTab = 0
    @Namespace var namespace
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    
    
    var body: some View {
        NavigationView {
            
            
            ZStack{
                VStack{
                    HStack{
                        Text("Specialty Coffee")
                            .font(.title)
                            .fontWeight(.heavy)
                            .padding(.leading)
                        Spacer()
                        
                    }
                    
                    HStack{
                        Text("스페셜티 커피란?\n스페셜티 커피 협회에서 정한 기준에 따라 커피를 평가하여 100점 중 80점 이상의 커피이다.")
                            .font(.system(size: 9))
                            .fontWeight(.light)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal)
                            .padding(.top, -10)
                        
                        Spacer()
                    }
                    VStack {
                        Tabs(tabs: .constant(["전체", "아프리카", "남미", "아시아"]),
                             selection: $selectedTab,
                             underlineColor: .black) {
                            title, isSelected in
                            Text(title.uppercased())
                                .font(.system(size: 18))
                                .fontWeight(.semibold)
                                .foregroundColor(isSelected ? .black : .gray)
                            
                        }
                        
                        //              Text("Selected tab is at index ")
                             .padding([.top, .leading], 10)
                    }
                    
                    //lazy Grid geometry 부분
                    ZStack {
                        Color(white: 1).edgesIgnoringSafeArea(.all)
                        
                        ScrollView {
                            
                            layout
                        }
                        
                        
                        
                        toggle
                        
                        
                        
                        
                        
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
                    }
                    .navigationBarHidden(true)
                }
                
                fullcontent
                    .frame(maxWidth: 712)
                    .background(Color("Background 1").opacity(appear ? 1 : 0))
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    .frame(maxWidth: .infinity)
                    .edgesIgnoringSafeArea(.all)
                
            }
            
            
//            .navigationBarHidden(true) A
        }
        .navigationBarHidden(true)
        
    }
    
    
    @ViewBuilder
    //카드 형태
    var layout: some View {
        if horizontalSizeClass == .regular {
            LazyVGrid(
                columns: [GridItem(.adaptive(minimum: show ? 240 : 700), spacing: 16)],
                spacing: 16) {
                content
            }
            .animation(.spring(response: 0.4, dampingFraction: 0.8))
            .padding(20)
        } else {
            VStack(spacing: show ? 30 : -160) {
                content
            }
            .animation(.spring(response: 0.4, dampingFraction: 0.8))
            .padding(20)
        }
    }
    
    
    
    //item = gridcarditem
    var content: some View {
        ForEach(items.indices) { index in
            GeometryReader { geo in
                VStack(alignment: .center) {
                    LivestreamItem(cardItem: items[index])
                        .matchedGeometryEffect(id: items[index].id, in: namespace, properties: .frame, isSource: !items[index].show)
                        .frame(maxWidth: 600, maxHeight: 300)
                        .onTapGesture {
                            items[index].show = true
                            items[index].index = 1
                        }
                }
                .rotation3DEffect(
                    Angle(degrees: items[index].appear || show ? 0 : Double(5 - geo.frame(in: .global).minY / -20)),
                    axis: (x: -1, y: 0, z: 0.0),
                    anchor: .center,
                    anchorZ: 0.0,
                    perspective: 0.3
                )
                .animation(.spring(response: 0.4, dampingFraction: 0.8))
            }
            .zIndex(items[index].index)
            .frame(maxWidth: 600)
            .frame(height: 300)
        }
    }
    
//    클릭 시 풀스크린
    var fullcontent: some View {
        ForEach(items.indices) { index in
            if items[index].show {
                CoffeeDetail()
//                ScrollView {
//                    LivestreamItem(cardItem: items[index])
//                        .matchedGeometryEffect(id: items[index].id, in: namespace, properties: .frame, isSource: items[index].show)
//                        .frame(maxWidth: 712)
//                        .frame(height: 500)
//                        .onTapGesture {
//                            items[index].show = false
//                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
//                                items[index].index = 0
//                            }
//                        }
//                        .zIndex(1)
//                    CoffeeSubInfo()
//                        .offset(y: appear ? 0 : -100)
//                        .opacity(appear ? 1 : 0)
//                        .zIndex(0)
//                }
//                .animation(.spring(response: 0.4, dampingFraction: 0.8))
                .onAppear {
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                        appear = true
                    }
                    items[index].appear = true
                    
                    
                }
                .onDisappear {
                    appear = false
                    items[index].appear = false
                }
            }
        }
    }
    
    //3d형태 토글 버튼
    var toggle: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: { show.toggle() }) {
                    ToggleButton()
                }
                .padding()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
