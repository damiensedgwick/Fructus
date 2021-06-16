//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Damien K. Sedgwick on 16/06/2021.
//

import SwiftUI

struct FruitHeaderView: View {
    
    var fruit: Fruit
    
    @State private var isAnimatigImage: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 8, x: 8, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatigImage ? 0.8 : 0.5)
        }
        .frame(height: 440)
            .onAppear() {
                withAnimation(.easeOut(duration: 0.5)) {
                    isAnimatigImage = true
                }
            }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
