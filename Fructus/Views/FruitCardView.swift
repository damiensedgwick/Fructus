//
//  FruitCardView.swift
//  Fructus
//
//  Created by Damien K. Sedgwick on 11/06/2021.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        Text("Blueberry")
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 300, height: 640))
    }
}
