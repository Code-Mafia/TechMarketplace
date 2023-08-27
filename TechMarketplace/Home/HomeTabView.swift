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
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
            }
            
            CartView()
                .tabItem {
                    Image(systemName: "cart")
            }
            
            ProfileView()
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
