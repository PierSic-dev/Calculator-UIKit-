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
    }
}

struct Operation: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .background(.orange)
            .clipShape(Circle())
    }
}
