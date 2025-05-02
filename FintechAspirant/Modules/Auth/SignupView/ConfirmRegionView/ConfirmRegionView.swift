//
//  ConfirmRegionView.swift
//  FintechAspirant
//
//  Created by Jaimin on 01/05/25.
//

import SwiftUI

struct ConfirmRegionView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedRegion: String = ""
    @State private var navigateToRewardSignup = false
    
    var body: some View {
        
        VStack {
            Spacer().frame(height: 40)
            
            HStack {
                // X with white color
                DismissButton(type: .textX(color: .white))
                Spacer()
            }
            
            Spacer()
            
            // Title
            Text("Confirm your region")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Text("This helps us make sure you get the right experience for where you live and pay tax.")
                .font(.system(size: 16))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)
                .padding(.top, 8)
            
            Spacer()
            
            // Picker
            Menu {
                Button("United States") { selectedRegion = "United States" }
                Button("United Kingdom") { selectedRegion = "United Kingdom" }
                //                Button("Canada") { selectedRegion = "Canada" }
                //                Button("Australia") { selectedRegion = "Australia" }
            } label: {
                HStack {
                    Text(selectedRegion.isEmpty ? "Select region" : selectedRegion)
                        .foregroundColor(selectedRegion.isEmpty ? .gray : .white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Image(systemName: "chevron.down")
                        .foregroundColor(.gray)
                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .padding(.horizontal)
            }
            
            CommonButton(
                title: "Continue",
                style: .filled(backgroundColor: Color.gray.opacity(selectedRegion.isEmpty ? 0.3 : 0.5), foregroundColor: .black),
                action: {
                    navigateToRewardSignup = true
                }
            )
            .padding(.horizontal)
            .padding(.top, 20)
            .disabled(selectedRegion.isEmpty)
            Spacer()
        }
        .background(Color.black)
        .ignoresSafeArea()
        .navigationBarHidden(true)
        .background(
            NavigationLink(
                destination: RewardSignupView(),
                isActive: $navigateToRewardSignup,
                label: { EmptyView() }
            )
        )
    }
}

#Preview {
    ConfirmRegionView()
}
