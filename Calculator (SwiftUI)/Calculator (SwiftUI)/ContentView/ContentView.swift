//
//  ContentView.swift
//  Calculator (SwiftUI)
//
//  Created by Pierpaolo Siciliano on 29/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                Spacer()
                    .frame(
                        width: geo.size.width,
                        height: geo.size.height * 0.20
                    )
                Text("0")
                    .padding()
                    .frame(
                        width: geo.size.width,
                        height: geo.size.height * 0.15,
                        alignment: .trailing
                    )
                    .font(.system(size: 300))
                    .minimumScaleFactor(0.01)
                KeyboardView()
                    .padding()
                    .frame(
                        width: geo.size.width,
                        height: geo.size.height * 0.65
                    )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
