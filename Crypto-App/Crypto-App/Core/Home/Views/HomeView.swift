//
//  HomeView.swift
//  Crypto-App
//
//  Created by Sreekutty Maya on 07/04/2025.
//

import SwiftUI

struct HomeView: View {
    @State private var showPortfolio: Bool = false
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea(.all)
            VStack {
                homeHeaderView
                Spacer(minLength: 0)
            }
             
        }
    }
}

#Preview {
    HomeView()
}


extension HomeView {
    
    private var homeHeaderView : some View {
        HStack {
            CircleButtonView(icon: showPortfolio ? "plus" : "info")
                
                .background(
                    CircleViewAnimation(animate: $showPortfolio)
                )

            Spacer()

            Text(showPortfolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
                .animation(.none) // Still fine here

            Spacer()

            CircleButtonView(icon: "chevron.right")
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        showPortfolio.toggle()
                    }
                }
        }.padding(.horizontal)
    }
}
