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
                        height: geo.size.height * 0.25
                    )
                Text("0")
                    .frame(
                        width: geo.size.width,
                        height: geo.size.height * 0.10
                    )
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
