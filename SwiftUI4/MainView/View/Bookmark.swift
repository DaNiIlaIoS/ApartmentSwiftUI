//
//  Bookmark.swift
//  SwiftUI4
//
//  Created by Даниил Сивожелезов on 19.08.2024.
//

import SwiftUI

struct Bookmark: View {
    var body: some View {
        Button {
            //
        } label: {
            Rectangle()
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 6))
                .overlay {
                    Image(systemName: "bookmark")
                        .foregroundStyle(.blue)
                }
        }
        .frame(width: 30, height: 30)
        .padding()
    }
}
