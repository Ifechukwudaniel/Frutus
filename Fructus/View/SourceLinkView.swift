//
//  SourceLinkView.swift
//  Fructus
//
//  Created by ifechukwu daniel; on 16/07/2021.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                 Text("Content Source")
                 Spacer()
                 Link("Wikipidia", destination: URL(string: "https://en.wikipedia.org/")!)
                 Image(systemName: "arrow.up.right.square")
                
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
