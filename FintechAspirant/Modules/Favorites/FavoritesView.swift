//
//  FavoritesView.swift
//  FintechAspirant
//
//  Created by Jaimin on 02/05/25.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationStack {
            Text("Favorites Screen")
                .navigationTitle("Favorites")
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

#Preview {
    FavoritesView()
}
