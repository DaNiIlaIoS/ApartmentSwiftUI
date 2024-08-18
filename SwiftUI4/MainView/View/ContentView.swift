//
//  ContentView.swift
//  SwiftUI4
//
//  Created by Даниил Сивожелезов on 15.08.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Text(getApartmentsText(for: viewModel.apartments.count))
                    
                    ForEach(viewModel.apartments) { apartment in
                        NavigationLink {
                            DetailsView(apartment: apartment)
                                .toolbar(.hidden, for: .navigationBar)
                        } label: {
                            ApartmentItemView(item: apartment)
                                .foregroundStyle(.black)
                        }
                    }
                }
                .padding(.horizontal, 18)
            }
            .background(Color.appLigth)
            
        }
    }
    
    func getApartmentsText(for count: Int) -> String {
        let form: String
        
        switch count % 10 {
        case 1 where count % 100 != 11:
            form = "предложение"
        case 2...4 where !(11...14).contains(count % 100):
            form = "предложения"
        default:
            form = "предложений"
        }
        
        return "\(count) \(form)"
    }
}

#Preview {
    ContentView()
}
