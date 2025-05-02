//
//  HomeView.swift
//  FintechAspirant
//
//  Created by Jaimin on 02/05/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            Text("Home Screen")
                .navigationTitle("Home")
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

#Preview {
    HomeView()
}
