//
//  CircleButtonView.swift
//  Crypto-App
//
//  Created by Sreekutty Maya on 07/04/2025.
//

import SwiftUI

struct CircleButtonView: View {
    var icon : String
    
    var body: some View {
        Image(systemName:icon)
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
                Circle()
                    .foregroundColor(Color.theme.background)
            ).shadow(
                color: Color.theme.accent.opacity(0.25), radius: 10
            )
            
    }
}

#Preview {
    CircleButtonView(icon: "info")
        .previewLayout(.sizeThatFits)
}

#Preview {
    CircleButtonView(icon: "plus")
        .previewLayout(.sizeThatFits)
        .preferredColorScheme(.dark)
}
