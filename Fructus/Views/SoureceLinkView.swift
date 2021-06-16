//
//  SoureceLinkView.swift
//  Fructus
//
//  Created by Damien K. Sedgwick on 16/06/2021.
//

import SwiftUI

struct SoureceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                
                Text("Content Source")
                
                Spacer()
                
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SoureceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SoureceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
