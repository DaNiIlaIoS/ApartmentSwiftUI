//
//  BottomButton.swift
//  SwiftUI4
//
//  Created by Даниил Сивожелезов on 18.08.2024.
//

import SwiftUI

struct BottomButton: View {
    let text: String
    let background: Color
    let foreground: Color
    
    var body: some View {
        Button {
            //
        } label: {
            Text(text)
                
        }
        .padding(.vertical, 14)
        .foregroundStyle(foreground)
        .frame(maxWidth: .infinity)
        .background(background)
        .clipShape(.rect(cornerRadius: 10))
    }
}
