//
//  HomeView.swift
//  TechMarketplace
//
//  Created by Rajmani Kushwaha on 27/08/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.baseWhite.edgesIgnoringSafeArea(.all)
                
                VStack {
                    HomeBanner()
                    
                    HStack {
                        CategoryView(title: "Categories")
                        CategoryView(title: "Favorites")
                        CategoryView(title: "Gifts")
                        CategoryView(title: "Best selling")
                    }
                    .frame(maxWidth: .infinity, minHeight: 120, maxHeight: 120)
                    .padding(.top)
                    
                    Text("Sales")
                        .bold()
                        .font(.title)
                        .padding(.top)
                    
                    HStack(spacing: 20) {
                        ProductCard(productName: "Smartphones", productImage: "Smartphone", discount: 20)
                        ProductCard(productName: "Monitors", productImage: "Monitor", discount: 50)
                    }
                    .padding(.top)
                }
                .padding()
                .navigationTitle("Home")
            }
        }
    }
}

struct CategoryView: View {
    let title: String
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.gray) // Assuming you have an extension for light blue color
                    .frame(width: 40, height: 40)
                
                Image(systemName: "photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
            }
            Text(title)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
