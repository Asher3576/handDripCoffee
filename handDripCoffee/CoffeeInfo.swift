//
//  ModelItem.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/04/30.
//

import SwiftUI

struct CoffeeInfo: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var text: String
    var score: String
    var image: String
    var logo: String
    var show: Bool
    var appear: Bool
    var index: Double
}

var coffeeInfos = [
    CoffeeInfo(
        title: "에티오피아 G1",
        subtitle: "아프리카",
        text: "에티오피아 원두는~~~~",
        score: "82",
        image: "Livestream 1",
        logo: "🇪🇹",
        show: false,
        appear: false,
        index: 0
    ),
    CoffeeInfo(
        title: "에티오피아 G1",
        subtitle: "아프리카",
        text: "에티오피아 원두는~~~~",
        score: "82",
        image: "Livestream 2",
        logo: "🇪🇹",
        show: false,
        appear: false,
        index: 0
    ),
    CoffeeInfo(
        title: "에티오피아 예가체프",
        subtitle: "남미",
        text: "에티오피아 원두는~~~~",
        score: "82",
        image: "Livestream 3",
        logo: "🇪🇹",
        show: false,
        appear: false,
        index: 0
    ),
    CoffeeInfo(
        title: "에티오피아 예가체프",
        subtitle: "남미",
        text: "에티오피아 원두는~~~~",
        score: "82",
        image: "Livestream 4",
        logo: "🇪🇹",
        show: false,
        appear: false,
        index: 0
    ),
    CoffeeInfo(
        title: "에티오피아 예가체프",
        subtitle: "남미",
        text: "에티오피아 원두는~~~~",
        score: "82",
        image: "Livestream 5",
        logo: "🇪🇹",
        show: false,
        appear: false,
        index: 0
    ),
    CoffeeInfo(
        title: "에티오피아 예가체프",
        subtitle: "남미",
        text: "에티오피아 원두는~~~~",
        score: "82",
        image: "Livestream 6",
        logo: "🇪🇹",
        show: false,
        appear: false,
        index: 0
    )
]
