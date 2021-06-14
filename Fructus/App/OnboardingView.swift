//
//  OnboardingView.swift
//  Fructus
//
//  Created by Damien K. Sedgwick on 12/06/2021.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits: [Fruit] = fruitsData

    var body: some View {
        TabView {
            ForEach(fruits[0...4]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
