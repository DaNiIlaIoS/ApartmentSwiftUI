//
//  DetailsView.swift
//  SwiftUI4
//
//  Created by Даниил Сивожелезов on 17.08.2024.
//

import SwiftUI

struct DetailsView: View {
    let apartment: Apartment
    let rows: [GridItem] = [GridItem(.flexible(), spacing: 4), GridItem(.flexible(), spacing: 4)]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            ZStack(alignment: .center) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 0) {
                        GeometryReader { proxy in
                            let minY = proxy.frame(in: .global).minY
                            Image(apartment.mainImage)
                                .resizable()
                                .scaledToFill()
                                .frame(height: 400 + (minY > 0 ? minY : 0))
                                .frame(width: proxy.size.width)
                                .offset(y: -minY)
                        }
                        .frame(height: 400)
                        VStack(alignment: .leading, spacing: 32) {
                            VStack(alignment: .leading, spacing: 20) {
                                VStack(alignment: .leading, spacing: 17) {
                                    BoldText(text: apartment.title)
                                    BoldText(text: "от \(apartment.price) ₽")
                                    Text("Москва, поселение Сосенское, деревня Столбово")
                                        .font(.system(size: 13, weight: .light))
                                        .foregroundStyle(.gray)
                                }
                                HStack {
                                    ForEach(apartment.options) { option in
                                        ApartmentItemOption(option: option)
                                    }
                                }
                            }
                            
                            VStack(alignment: .leading) {
                                BoldText(text: "Отделка квартир")
                                
                                LazyVGrid(columns: rows, spacing: 4) {
                                    ForEach(apartment.descriptionImages, id: \.self) { image in
                                        Image(image)
                                            .resizable()
                                            .scaledToFit()
                                            .clipShape(.rect(cornerRadius: 6))
                                    }
                                }
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.top, 35)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.white)
                        .clipShape(.rect(cornerRadius: 15))
                        .padding(.top, -30)
                        
                    }
                }
                .ignoresSafeArea()
                
                VStack {
                    HStack {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "chevron.left")
                            Text("Назад")
                        }
                        .foregroundStyle(.white)
                        Spacer()
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
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 20)
                    
                    Spacer()
                }
                
            }
            HStack {
                BottomButton(text: "Заказать звонок", background: .appLigthBlue, foreground: .appBlue)
                BottomButton(text: "Позвонить", background: .appBlue, foreground: .white)
            }
            .padding(.horizontal, 20)
            .padding(.top, 10)
        }
    }
}
