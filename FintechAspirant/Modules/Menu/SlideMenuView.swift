//
//  SlideMenu.swift
//  FintechAspirant
//
//  Created by Jaimin on 02/05/25.
//

import SwiftUI

struct SlideMenuView: View {
    @StateObject private var viewModel = MenuViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 24) {
                HStack {
                    Text("Menu")
                        .font(.largeTitle)
                    Spacer()
                    ZStack {
                        Circle()
                            .strokeBorder(Color.yellow, lineWidth: 2)
                            .frame(width: 40, height: 40)
                        
                        Image(systemName: "person.crop.circle.fill") // Placeholder icon
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.yellow)
                            .frame(width: 24, height: 24)
                    }
                }
                .padding(.horizontal, 24)
                List {
                    ForEach(viewModel.menuItems) { item in
                        HStack(spacing: 0) {
                            VStack(alignment: .leading, spacing: 4) {
                                Text(item.title)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                if let subtitle = item.subtitle {
                                    Text(subtitle)
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding(.vertical, 8)
                            .listRowBackground(Color.black)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                    }
                }
                .navigationTitle("")
                .background(Color.black.edgesIgnoringSafeArea(.all))
                .listStyle(PlainListStyle())
            }
        }
        .preferredColorScheme(.dark)
        .padding(.vertical, 24)
    }
}

#Preview {
    SlideMenuView()
}
