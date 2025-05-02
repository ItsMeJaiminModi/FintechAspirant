//
//  DashboardViewModel.swift
//  FintechAspirant
//
//  Created by Jaimin on 02/05/25.
//

import Foundation

class DashboardViewModel: ObservableObject {
    @Published var investmentData = InvestmentData(
        username: "@abhinavj41663",
        totalValue: 97.81,
        holdings: 0.0,
        cash: 97.81,
        crypto: 0.0
    )
    @Published var invites: [Invite] = [Invite(username: "Harsg", userImage: ""), Invite(username: "Dilip", userImage: "")]
}
struct Invite {
    var username: String
    var userImage: String
}

struct InvestmentData {
    var username: String
    var totalValue: Double
    var holdings: Double
    var cash: Double
    var crypto: Double
}
