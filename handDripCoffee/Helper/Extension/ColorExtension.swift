//
//  ColorExtension.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/04/28.
//

import SwiftUI

extension Color {
    
    init(hex: String){
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double((rgb >> 0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
        
    }
    
    
    /** CUSTOMISED COLOR **/
    
    // 1. HEX 사용법
    static let grayC5 = Color(hex: "#c5c5c5")
    static let caption = Color(hex: "#4E4E4E")
    static let waterblue = Color(hex: "#67B0F0")
    static let cancel = Color(hex: "#FF8888")
    static let body = Color(hex: "5C5C5C")
    static let waterred = Color(hex: "FF4242")
    // 2. UIColor 사용법
    static let background = Color(UIColor.systemBlue)
    
    // 3. 시스템 이름으로 된 컬러 사용법
    static let bieberPeach = Color("peach")
    
    // 4. 프라이머리 컬러에 오퍼시티까지 !
    static let primaryShadoe = Color.primary.opacity(0.2)

}



