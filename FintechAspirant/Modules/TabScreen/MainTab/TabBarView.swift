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
            
            
            //            DashboardView()
            //                .tabItem {
            //                    Image(systemName: "person.fill")
            //                    Text("Profile")
            //                }
            
            //            DashboardView()
            //                .tabItem {
            //                    Image(systemName: "person.fill")
            //                    Text("More")
            //                }
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
        .preferredColorScheme(.dark)
        .navigationBarBackButtonHidden(true)
    }
}

// Example placeholder views
struct HomeView: View {
    var body: some View {
        NavigationStack {
            Text("Home Screen")
                .navigationTitle("Home")
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

struct SearchView: View {
    var body: some View {
        NavigationStack {
            Text("Search Screen")
                .navigationTitle("Search")
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

struct FavoritesView: View {
    var body: some View {
        NavigationStack {
            Text("Favorites Screen")
                .navigationTitle("Favorites")
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

struct ProfileView: View {
    var body: some View {
        NavigationStack {
            Text("Profile Screen")
                .navigationTitle("Profile")
        }
    }
}
