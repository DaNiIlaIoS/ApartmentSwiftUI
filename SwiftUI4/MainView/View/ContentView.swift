//
//  ContentView.swift
//  SwiftUI4
//
//  Created by Даниил Сивожелезов on 15.08.2024.
//

import SwiftUI

struct ContentView: View {
    private let apartments: [Apartment] = Apartment.mockData()
    private let rows = [GridItem(.flexible())]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("10 предложений")
                    LazyVGrid(columns: rows, spacing: 10) {
                        ForEach(apartments) { apartment in
                            ApartmentItemView(item: apartment)
                        }
                    }
                }
                .padding(.horizontal, 18)
            }
            .background(Color.appLigth)
        }
    }
}

#Preview {
    ContentView()
}
