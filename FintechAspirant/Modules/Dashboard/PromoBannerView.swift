//
//  PromoBannerView.swift
//  FintechAspirant
//
//  Created by Jaimin on 02/05/25.
//

import SwiftUI

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

#Preview {
    PromoBannerView()
}
