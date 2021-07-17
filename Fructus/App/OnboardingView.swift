//
//  OnboardingView.swift
//  Fructus
//
//  Created by ifechukwu daniel; on 16/07/2021.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView{
            ForEach(fruitsData[0...5]){ item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
