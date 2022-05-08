//
//  SwiftUIView2.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/05/02.
//

import SwiftUI

struct SwiftUIView2: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "chevron.backward")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                    .padding(.leading,25)
                Spacer()
            }
            Spacer()
            
            ZStack{
                VStack{
                    HStack{
                        Image("LowRoasting")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 103.0, height: 103.0)
                        
                        Image("MiddleRoasting")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 103.0, height: 103.0)
                        
                        Image("DarkRoasting")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 103.0, height: 103.0)
                    }
                }
            }
        }
    }
}

struct SwiftUIView2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView2()
    }
}
