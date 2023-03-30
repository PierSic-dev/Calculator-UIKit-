//
//  ButtonView.swift
//  Calculator (SwiftUI)
//
//  Created by Pierpaolo Siciliano on 30/03/23.
//

import SwiftUI

// Testing for a custom button
struct ButtonView: View {
    var title: LocalizedStringKey
    var action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .bold()
        }
        .buttonStyle(DefaultWide())
        .gridCellColumns(2)
    }
    
    init(
        _ titleKey: LocalizedStringKey,
        action: @escaping () -> Void
    ) {
        self.title = titleKey
        self.action = action
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView("AC") {
            print("missing code")
        }
    }
}
