//
//  BoldText.swift
//  SwiftUI4
//
//  Created by Даниил Сивожелезов on 17.08.2024.
//

import SwiftUI

struct BoldText: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.system(size: 22, weight: .bold))
    }
}
