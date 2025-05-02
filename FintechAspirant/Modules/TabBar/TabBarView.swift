//
//  TabBarView.swift
//  FintechAspirant
//
//  Created by Jaimin on 02/05/25.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .navigationBarBackButtonHidden(true)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            
            FavoritesView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Favorites")
                }
            
            DashboardView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
        .preferredColorScheme(.dark)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    TabBarView()
}
