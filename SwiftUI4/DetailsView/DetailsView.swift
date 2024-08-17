//
//  DetailsView.swift
//  SwiftUI4
//
//  Created by Даниил Сивожелезов on 17.08.2024.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        ZStack {
            ScrollView {
                GeometryReader { proxy in
                    let minY = proxy.frame(in: .global).minY
                    Image(.appartment0)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 400 + (minY > 0 ? minY : 0))
                        .frame(width: proxy.size.width)
                        .offset(y: -minY)
                }
                VStack {
                    VStack {
                        VStack {
                            
                        }
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    DetailsView()
}
