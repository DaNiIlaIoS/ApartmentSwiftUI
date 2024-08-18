//
//  ContentViewModel.swift
//  SwiftUI4
//
//  Created by Даниил Сивожелезов on 18.08.2024.
//

import Foundation

final class ContentViewModel: ObservableObject {
    @Published var apartments: [Apartment] = Apartment.mockData()
}
