//
//  DismissButton.swift
//  FintechAspirant
//
//  Created by Jaimin on 02/05/25.
//

import SwiftUI

enum DismissButtonType {
    case textX(color: Color)
    case backArrow(color: Color)
}

struct DismissButton: View {
    @Environment(\.presentationMode) private var presentationMode
    let type: DismissButtonType
    
    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            Group {
                switch type {
                case .textX(let color):
                    Image(systemName: "xmark")
                        .font(.title2)
                        .foregroundColor(color)
                        .padding()
                case .backArrow(let color):
                    Image(systemName: "chevron.left")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(color)
                }
            }
            .padding(12)
            .scaleEffect(1.0)
            .contentShape(Circle()) // Expands tappable area
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    DismissButton(type: .textX(color: .green))
}
