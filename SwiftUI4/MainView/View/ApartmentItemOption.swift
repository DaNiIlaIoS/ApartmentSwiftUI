//
//  ApartmentItemOption.swift
//  SwiftUI4
//
//  Created by Даниил Сивожелезов on 17.08.2024.
//

import SwiftUI

struct ApartmentItemOption: View {
    let optionName: String
    let optionValue: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(optionName)
                .foregroundStyle(.gray)
            Text(optionValue)
        }
//      .frame(maxWidth: .infinity)
        .padding(.vertical, 10)
        .padding(.horizontal, 13)
        .font(.system(size: 12))
        .background(.appLigth2)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
