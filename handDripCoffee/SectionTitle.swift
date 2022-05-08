//
//  SectionTitle.swift
//  handDripCoffee
//
//  Created by 임영후 on 2022/05/01.
//

import SwiftUI

struct SectionTitle: View {
    var title = "Recent"
    var body: some View {
        HStack {
            Text(title).bold()
                .padding(.horizontal)
                .padding(.top, 16)
            Spacer()
        }
    }
}

struct SectionTitle_Previews: PreviewProvider {
    static var previews: some View {
        SectionTitle()
    }
}
