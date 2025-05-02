//
//  MenuViewModel.swift
//  FintechAspirant
//
//  Created by Jaimin on 02/05/25.
//

import Foundation

class MenuViewModel: ObservableObject {
    @Published var menuItems: [MenuItem] = [
        MenuItem(title: "Investing", subtitle: "Balances, recurring investments, DRIP, Stock Lending", destination: "InvestingView"),
        MenuItem(title: "Crypto", subtitle: "Transfer limits", destination: "CryptoView"),
        MenuItem(title: "Transfers", subtitle: "Deposits, withdrawals, account transfers", destination: "TransfersView"),
        MenuItem(title: "Rewards", subtitle: "Invite friends, earn stocks, get rewards", destination: "RewardsView"),
        MenuItem(title: "History", subtitle: "Activity across all accounts", destination: "HistoryView"),
        MenuItem(title: "Reports and statements", subtitle: "Account activity reports, monthly statements", destination: "ReportsView"),
        MenuItem(title: "Tax center", subtitle: "Tax documents, FAQs", destination: "TaxView")
    ]
}

struct MenuItem: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String?
    let destination: String // Placeholder for now; can later be a View or enum
}

