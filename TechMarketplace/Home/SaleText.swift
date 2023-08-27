//
//  SaleText.swift
//  TechMarketplace
//
//  Created by Rajmani Kushwaha on 28/08/23.
//

import SwiftUI

struct SaleText: View {
    let text: String
    var body: some View {
        ZStack {
            Color.blue.opacity(0.1)
                .cornerRadius(4)
            Text("-\(text)%")
                .font(.caption)
                .foregroundColor(.blue)
                .bold()
                .minimumScaleFactor(0.5)
                .lineLimit(1)
        }
        .frame(width: 50, height: 20)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct SaleTextProvider_Previews: PreviewProvider {
    static var previews: some View {
        SaleText(text: "20")
            .padding()
    }
}
