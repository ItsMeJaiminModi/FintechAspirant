//
//  ProfileHeaderView.swift
//  FintechAspirant
//
//  Created by Jaimin on 02/05/25.
//

import SwiftUI

struct ProfileHeaderView: View {
    let username: String
    let total: Double
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 80, height: 80)
                .overlay(Circle().stroke(Color.black, lineWidth: 2))
                .background(Circle().stroke(Color.white, lineWidth: 2))
            
            Text(username)
                .foregroundColor(.white)
                .font(.subheadline)
            
            Text(String(format: "$%.2f", total))
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Text("Total in Robinhood")
                .foregroundColor(.gray)
                .font(.footnote)
            
            Text("Add account")
                .foregroundColor(.blue)
                .font(.footnote)
        }
    }
}

#Preview {
    ProfileHeaderView(username: "Demo", total: 100)
}
