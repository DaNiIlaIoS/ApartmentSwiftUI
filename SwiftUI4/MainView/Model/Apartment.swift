//
//  Appartment.swift
//  SwiftUI4
//
//  Created by Даниил Сивожелезов on 16.08.2024.
//

import Foundation

struct Apartment: Identifiable {
    let id = UUID()
    let mainImage: String
    let title: String
    let price: String
    let place: String
    let options: [ApartmentItem]
    let descriptionImages: [String]
    
    static func mockData() -> [Apartment] {
        [Apartment(mainImage: "appartment0",
                   title: "Ольховый Квартал",
                   price: "8 029 445",
                   place: "Москва, поселение Сосенское, деревня Столбово",
                   options: [ApartmentItem(optionName: "Студии",
                                           optionValue: "от 8 млн ₽"),
                             ApartmentItem(optionName: "1-комн.",
                                           optionValue: "от 10,1 млн ₽"),
                             ApartmentItem(optionName: "2-комн.",
                                           optionValue: "от 11,4 млн ₽")],
                   descriptionImages: ["appartment01", "appartment02", "appartment03", "appartment04"]),
         
         Apartment(mainImage: "appartment1",
                   title: "Новое Видное",
                   price: "4 735 485",
                   place: "Городское поселение Горки Ленинские, Ленинский городской округ, Московская область",
                   options: [ApartmentItem(optionName: "Студии",
                                           optionValue: "от 4,7 млн ₽"),
                             ApartmentItem(optionName: "1-комн.",
                                           optionValue: "от 5,6 млн ₽"),
                             ApartmentItem(optionName: "2-комн.",
                                           optionValue: "от 6,3 млн ₽ ")],
                   descriptionImages: ["appartment11", "appartment12", "appartment13", "appartment14"])]
    }
}
