//
//  SearchView.swift
//  FintechAspirant
//
//  Created by Jaimin on 02/05/25.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationStack {
            Text("Search Screen")
                .navigationTitle("Search")
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

#Preview {
    SearchView()
}
