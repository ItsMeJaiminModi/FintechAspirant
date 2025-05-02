//
//  CommonButton.swift
//  FintechAspirant
//
//  Created by Jaimin on 02/05/25.
//

import SwiftUI

enum CommonButtonStyle {
    case filled(backgroundColor: Color, foregroundColor: Color)
    case outlined(borderColor: Color, foregroundColor: Color)
}


struct CommonButton: View {
    let title: String
    let style: CommonButtonStyle
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(12)
                .background(backgroundView)
                .foregroundColor(foregroundColor)
                .cornerRadius(30)
        }
    }
    
    private var backgroundView: some View {
        switch style {
        case .filled(let backgroundColor, _):
            return AnyView(backgroundColor)
        case .outlined(let borderColor, _):
            return AnyView(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(borderColor, lineWidth: 1)
            )
        }
    }
    
    private var foregroundColor: Color {
        switch style {
        case .filled(_, let foregroundColor):
            return foregroundColor
        case .outlined(_, let foregroundColor):
            return foregroundColor
        }
    }
}

#Preview {
    // Log in button (filled)
    CommonButton(
        title: "Log in",
        style: .filled(backgroundColor: Color.gray.opacity(0.7), foregroundColor: .black),
        action: {
            // login action
        }
    )
}
