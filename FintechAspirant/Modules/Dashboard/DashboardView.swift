//
//  DashboardView.swift
//  FintechAspirant
//
//  Created by Jaimin on 02/05/25.
//

import SwiftUI

struct DashboardView: View {
    @StateObject private var viewModel = DashboardViewModel()
    @State private var navigateToMenu = false
    
    var body: some View {
        VStack(spacing: 16) {
            ProfileHeaderView(username: viewModel.investmentData.username, total: viewModel.investmentData.totalValue)
            
            PromoBannerView()
            
            InvestmentSummaryView(data: viewModel.investmentData)
            
            // Menu button (filled)
            NavigationLink(destination: SlideMenuView(), isActive: $navigateToMenu) {
                CommonButton(
                    title: "Menu",
                    style: .filled(backgroundColor: Color.gray.opacity(0.7), foregroundColor: .black),
                    action: {
                        navigateToMenu = true
                    }
                )
            }
            
            // Log out (filled)
            CommonButton(
                title: "Log out",
                style: .filled(backgroundColor: Color.gray.opacity(0.7), foregroundColor: .black),
                action: {
                }
            )
            
            Spacer()
            
            rewardView()
        }
        .padding()
        .background(Color.black.edgesIgnoringSafeArea(.all))
        .preferredColorScheme(.dark)
        .navigationBarHidden(true)
        
    }
    
    func rewardView() -> some View {
        HStack(spacing: 8) {
            VStack(alignment: .leading, spacing: 0) {
                Text("\(viewModel.invites.count) Invites")
                    .font(.title)
                Image(systemName: "person.crop.circle.fill")
            }
            Spacer()
            Button(action: {}) {
                Text("Earn rewards")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(25)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    DashboardView()
}
