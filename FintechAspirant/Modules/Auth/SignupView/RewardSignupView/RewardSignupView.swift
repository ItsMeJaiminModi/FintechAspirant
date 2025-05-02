//
//  RewardSignupView.swift
//  FintechAspirant
//
//  Created by Jaimin on 02/05/25.
//

import SwiftUI

struct RewardSignupView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var email: String = ""
    @State private var navigateToDashboard = false
    
    var body: some View {
        ZStack {
            VStack {
                Spacer().frame(height: 40)
                
                HStack {
                    // Chevron back with white color
                    DismissButton(type: .backArrow(color: .white))
                    
                    Spacer()
                }
                
                Spacer()
                
                VStack(spacing: 10) {
                    Text("Get $7–175 of stock\nonce you sign up")
                        .font(.system(size: 30, weight: .bold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                    
                    Text("96% of rewards are $7–8. ") +
                    Text("See terms.")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .underline()
                }
                .padding(.top, 20)
                
                Spacer()
                
                // Email Field
                TextField("Enter your email", text: $email, prompt: Text("Email").foregroundColor(.gray))
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white.opacity(0.5), lineWidth: 1)
                    )
                    .foregroundColor(.white)
                    .padding(.horizontal)
                
                // Background Image
                Image("reward_background") // Make sure you add it to your Assets.xcassets with this name
                    .resizable()
                    .scaledToFit()
                    .opacity(0.8)
                
                // Continue Button
                NavigationLink(destination: TabBarView(), isActive: $navigateToDashboard) {
                    CommonButton(title: "Continue", style: .filled(backgroundColor: Color.gray.opacity(email.isEmpty ? 0.3 : 0.5), foregroundColor: .black)) {
                        navigateToDashboard = true
                        
                    }
                    
                    .disabled(email.isEmpty)
                    .padding(.bottom, 20)
                    .padding(.horizontal)
                    
                    Spacer()
                }
            }
        }
        .background(Color.black)
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

#Preview {
    RewardSignupView()
}
