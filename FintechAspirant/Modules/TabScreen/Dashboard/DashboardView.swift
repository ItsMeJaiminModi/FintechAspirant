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

struct PromoBannerView: View {
    var body: some View {
        HStack {
            Image(systemName: "percent")
                .foregroundColor(.yellow)
                .padding(.leading, 10)
            
            Text("Get a 4.5% APY boost on your brokerage cash! Terms apply.")
                .foregroundColor(.white)
                .font(.subheadline)
                .padding(.leading, 5)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
                .padding(.trailing, 10)
        }
        .padding()
        .background(Color(.darkGray))
        .cornerRadius(12)
    }
}

struct InvestmentSummaryView: View {
    let data: InvestmentData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("Individual investing")
                    .font(.headline)
                    .foregroundColor(.white)
                Spacer()
                Image(systemName: "info.circle")
                    .foregroundColor(.gray)
            }
            
            HStack {
                Text("Total individual value")
                    .foregroundColor(.gray)
                Spacer()
                Text(String(format: "$%.2f", data.totalValue))
                    .foregroundColor(.white)
            }
            
            HStack {
                Text("Individual holdings")
                    .foregroundColor(.gray)
                Spacer()
                Text(String(format: "$%.2f", data.holdings))
                    .foregroundColor(.white)
            }
            
            HStack {
                Text("Individual cash")
                    .foregroundColor(.gray)
                Spacer()
                Text(String(format: "$%.2f", data.cash))
                    .foregroundColor(.white)
            }
            
            HStack {
                Text("Crypto holdings")
                    .foregroundColor(.gray)
                Spacer()
                Text(String(format: "$%.2f", data.crypto))
                    .foregroundColor(.white)
            }
        }
        .padding()
        .background(Color(.clear))
        .cornerRadius(12)
    }
}

#Preview {
    DashboardView()
}


