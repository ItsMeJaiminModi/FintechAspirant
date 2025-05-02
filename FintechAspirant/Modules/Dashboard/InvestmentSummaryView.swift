//
//  InvestmentSummaryView.swift
//  FintechAspirant
//
//  Created by Jaimin on 02/05/25.
//

import SwiftUI

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
    InvestmentSummaryView(
        data: InvestmentData(
            username: "Guest",
            totalValue: 10,
            holdings: 2,
            cash: 7,
            crypto: 1
        )
    )
}
