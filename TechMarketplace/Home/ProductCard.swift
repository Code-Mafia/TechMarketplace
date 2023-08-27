//
//  ProductCard.swift
//  TechMarketplace
//
//  Created by Rajmani Kushwaha on 28/08/23.
//

import SwiftUI

struct ProductCard: View {
    
    let productName: String
    let productImage: String
    let discount: Int
    
    var body: some View {
        
        HStack(spacing: 20) {
            VStack {
                SaleText(text: "\(discount)")
                
                VStack {
                    Image(productImage)
                    Spacer(minLength: 8)
                    Text(productName)
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                }
                .frame(maxHeight: .infinity)
                .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .background(.white)
            .cornerRadius(8)
            .shadow(color: .black.opacity(0.15), radius: 4)
        }
    }
}
