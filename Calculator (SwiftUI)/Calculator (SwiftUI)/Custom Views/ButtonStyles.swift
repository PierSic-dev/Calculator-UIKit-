//
//  DefaultStyle.swift
//  Calculator (SwiftUI)
//
//  Created by Pierpaolo Siciliano on 29/03/23.
//

import SwiftUI

struct Default: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .background(Color(uiColor: UIColor.darkGray))
            .clipShape(Circle())
            .aspectRatio(1, contentMode: .fit)
    }
}

struct Operation: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .background(.orange)
            .clipShape(Circle())
            .aspectRatio(1, contentMode: .fit)
    }
}

struct DefaultWide: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .background(Color(uiColor: UIColor.darkGray))
            .clipShape(Capsule())
            .aspectRatio(2, contentMode: .fit)
    }
}
