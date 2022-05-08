//
//  GridItem.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/04/30.
//

import SwiftUI

struct LivestreamItem: View {
    var cardItem: CoffeeInfo = coffeeInfos[0]
    #if os(iOS)
    var cornerRadius: CGFloat = 22
    #else
    var cornerRadius: CGFloat = 10
    #endif
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Text(cardItem.logo)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.all, 10)
                    .background(Color.white.opacity(0.1))
                    .clipShape(Circle())
                    .frame(width: 60.0, height: 60.0)
                Spacer()
                VStack(alignment: .center, spacing: 12) {
                    Text(cardItem.title)
                        .font(.title3).bold()
                        .foregroundColor(.white)
                    Text(cardItem.subtitle)
                        .font(.subheadline)
                        .foregroundColor(.white)
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
                .background(Color.grayC5.opacity(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            Text(cardItem.text)
                .font(Font.subheadline.smallCaps())
                .foregroundColor(.white)
                .padding(.top)
            Spacer()
        }
        .padding(.top, 10)
        .padding(.all, 20)
        .background(
            Image(cardItem.image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius, style: .continuous))
        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 10)
    }
}

struct LivestreamItem_Previews: PreviewProvider {
    static var previews: some View {
        LivestreamItem()
    }
}
