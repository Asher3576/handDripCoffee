//
//  TogleButton.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/04/30.
//

import SwiftUI

struct ToggleButton: View {
    var body: some View {
        Image(systemName: "switch.2")
            .font(.system(size: 15, weight: .regular))
            .foregroundColor(.white)
            .padding(.all, 8)
            .background(Color.black.opacity(0.6))
            .mask(Circle())
    }
}

struct ToggleButton_Previews: PreviewProvider {
    static var previews: some View {
        ToggleButton()
    }
}
