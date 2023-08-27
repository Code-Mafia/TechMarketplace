//
//  HomeView.swift
//  TechMarketplace
//
//  Created by Rajmani Kushwaha on 26/08/23.
//

import SwiftUI

struct HomeTabView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        
        TabView {
            
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
            }
            
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
            }
            
            Text("Cart")
                .tabItem {
                    Image(systemName: "cart")
            }
            
            Text("Profile")
                .tabItem {
                    Image(systemName: "person")
            }
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        let binding = Binding<Bool>(
            get: { false },
            set: { _ in }
        )
        HomeTabView(isPresented: binding)
    }
}
