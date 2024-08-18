//
//  ApartmentItemOption.swift
//  SwiftUI4
//
//  Created by Даниил Сивожелезов on 17.08.2024.
//

import SwiftUI

struct ApartmentItemOption: View {
    let option: ApartmentItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(option.optionName)
                .foregroundStyle(.gray)
            Text(option.optionValue)
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 13)
        .font(.system(size: 12))
        .background(.appLigth2)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
