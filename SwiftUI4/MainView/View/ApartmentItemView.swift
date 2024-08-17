//
//  ApartmentItemView.swift
//  SwiftUI4
//
//  Created by Даниил Сивожелезов on 16.08.2024.
//

import SwiftUI

struct ApartmentItemView: View {
    let item: Apartment
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                Image(item.image)
                    .resizable()
                    .frame(height: 185)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                Button {
                    //
                } label: {
                    Rectangle()
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                        .overlay {
                            Image(systemName: "bookmark")
                        }
                }
                .frame(width: 30, height: 30)
                .padding()
            }
            
            VStack(alignment: .leading, spacing: 15) {
                VStack(alignment: .leading, spacing: 13) {
                    BoldText(text: item.title)
                    BoldText(text: "от \(item.price) ₽")
                    Text(item.place)
                        .font(.system(size: 13, weight: .light))
                        .foregroundStyle(.gray)
                }
                HStack(spacing: 4) {
                    ForEach(item.options) { option in
                        ApartmentItemOption(optionName: option.optionName, optionValue: option.optionValue)
                    }
                    
                }
            }
            .padding(.horizontal, 18)
        }
        .padding(.bottom, 26)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}
