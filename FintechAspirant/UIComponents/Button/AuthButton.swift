//
//  NavigationButton.swift
//  FintechAspirant
//
//  Created by Jaimin on 02/05/25.
//

import SwiftUI

struct AuthButton<Destination: View>: View {
    let title: String
    let isFilled: Bool
    let destination: Destination
    
    var body: some View {
        NavigationLink(destination: destination) {
            Text(title)
                .fontWeight(.bold)
                .foregroundColor(isFilled ? .white : .black)
                .frame(maxWidth: .infinity)
                .padding(12)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(isFilled ? Color.black : Color.clear)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.black, lineWidth: isFilled ? 0 : 1)
                )
        }
    }
}

#Preview {
    AuthButton(title: "Sign up", isFilled: true, destination: LoginView())
}
