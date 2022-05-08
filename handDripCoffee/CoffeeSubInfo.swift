//
//  CourseSection.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/04/30.
//

import SwiftUI

struct CoffeeSubInfo: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 20) {
                ForEach(contentText) { item in
                    Text(item.text).font(item.font).fontWeight(item.weight)
                }
            }
            .padding(16)
//            CourseContent()
        }
    }
}

struct Content: Identifiable {
    var id = UUID()
    var text: String
    var font: Font
    var weight: Font.Weight
}

var contentText = [
    Content(text: "인류와 커피의 발상지로 알려져 ‘모든 것이 시작된 곳’ 이라\n불리는 나라 에티오피아는 최초로 커피가 발견된 곳 답게 커피를\n재배하기에 완벽한 기후와 토양을 갖고 있습니다.\n에티오피아 커피는 다른 생산지와 확실히 차별되는 화려한 향미를\n가졌으며 오랜 역사만큼 품질도 안정적입니다.\n에티오피아에서 좋은커피가 나는 지역은 하라르 (Harrar),\n시다모 (Sidamo), 예가체프 (Yiracheffe) 등이며,\n특히 예가체프는  에티오피아 커피의 대명사로 인식되고 있습니다.", font: .footnote, weight: .regular),
    Content(text: "안녕하세요~~", font: .footnote, weight: .regular),
    Content(text: "임영후입니다", font: .footnote, weight: .regular),
]

struct SectionContent_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeSubInfo()
    }
}
