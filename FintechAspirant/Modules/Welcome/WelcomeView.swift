//
//  WelcomeView.swift
//  FintechAspirant
//
//  Created by Jaimin on 01/05/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Spacer()
                
                // Title
                Text("Welcome to\nRobinhood")
                    .font(.system(size: 36, weight: .bold))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                // Subtitle
                Text("Join 23 million customers with access to US stocks and put your money in motion.")
                    .font(.system(size: 18))
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 32)
                
                // Illustration
                Image("welcome_illustration")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .padding(.top, 20)
                
                Spacer()
                
                // Buttons
                HStack(spacing: 16) {    
                    AuthButton(title: "Log in", isFilled: false, destination: LoginView())
                    AuthButton(title: "Sign up", isFilled: true, destination: ConfirmRegionView())
                }
                .padding(.horizontal, 24)
                .padding(.bottom, 36)
            }
            .background(Color(red: 0.9, green: 0.95, blue: 1.0)) // Light blue
            .ignoresSafeArea()
            .navigationBarHidden(true) // Hide nav bar on Welcome screen
        }
    }
}

#Preview {
    WelcomeView()
}
