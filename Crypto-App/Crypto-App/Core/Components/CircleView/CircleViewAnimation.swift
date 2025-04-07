//
//  CircleViewAnimation.swift
//  Crypto-App
//
//  Created by Sreekutty Maya on 07/04/2025.
//

import SwiftUI

struct CircleViewAnimation: View {
    @Binding var animate: Bool

        var body: some View {
//            Circle()
//                .stroke(Color.blue, lineWidth: 2)
//                .scaleEffect(animate ? 1.3 : 0.5)
//                .opacity(animate ? 0.3 : 0.0)
//                .animation(.easeOut(duration: 0.6), value: animate)
            
            Circle()
                .stroke(lineWidth: 2.0)
                .scaleEffect(animate ? 1.5 : 0.0)
                .opacity(animate ? 0.0 : 1.0)
                .animation(animate ? Animation.easeOut(duration: 1.0) : .none)
        }
}

#Preview {
    CircleViewAnimation(animate: .constant(false))
        .foregroundColor(.red)
        .frame(width: 100, height: 100)
}
