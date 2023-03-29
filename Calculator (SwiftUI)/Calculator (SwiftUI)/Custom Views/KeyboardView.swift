//
//  KeyboardView.swift
//  Calculator (SwiftUI)
//
//  Created by Pierpaolo Siciliano on 29/03/23.
//

import SwiftUI

struct KeyboardView: View {
    var body: some View {
        GeometryReader { geo in
            Grid {
                GridRow {
                    Button {
                        print("code missing")
                    } label: {
                        Text("AC")
                    }
                    .buttonStyle(Default())
                    Button {
                        print("code missing")
                    } label: {
                        Text("+/-")
                    }
                    .buttonStyle(Default())
                    Button {
                        print("code missing")
                    } label: {
                        Text("÷")
                    }
                    .buttonStyle(Operation())
                }
                GridRow {
                    Button {
                        print("code missing")
                    } label: {
                        Text("7")
                    }
                    .buttonStyle(Default())
                    Button {
                        print("code missing")
                    } label: {
                        Text("8")
                    }
                    .buttonStyle(Default())
                    Button {
                        print("code missing")
                    } label: {
                        Text("9")
                    }
                    .buttonStyle(Default())
                    Button {
                        print("code missing")
                    } label: {
                        Text("×")
                    }
                    .buttonStyle(Operation())
                }
                GridRow {
                    Button {
                        print("code missing")
                    } label: {
                        Text("4")
                    }
                    .buttonStyle(Default())
                    Button {
                        print("code missing")
                    } label: {
                        Text("5")
                    }
                    .buttonStyle(Default())
                    Button {
                        print("code missing")
                    } label: {
                        Text("6")
                    }
                    .buttonStyle(Default())
                    Button {
                        print("code missing")
                    } label: {
                        Text("-")
                    }
                    .buttonStyle(Operation())
                }
                GridRow {
                    Button {
                        print("code missing")
                    } label: {
                        Text("1")
                    }
                    .buttonStyle(Default())
                    Button {
                        print("code missing")
                    } label: {
                        Text("2")
                    }
                    .buttonStyle(Default())
                    Button {
                        print("code missing")
                    } label: {
                        Text("3")
                    }
                    .buttonStyle(Default())
                    Button {
                        print("code missing")
                    } label: {
                        Text("+")
                    }
                    .buttonStyle(Operation())
                }
                GridRow {
                    Button {
                        print("code missing")
                    } label: {
                        Text("0")
                    }
                    .buttonStyle(Default())
                    Button {
                        print("code missing")
                    } label: {
                        Text(".")
                    }
                    .buttonStyle(Default())
                    Button {
                        print("code missing")
                    } label: {
                        Text("=")
                    }
                    .buttonStyle(Operation())
                }
            }
            .frame(width: geo.size.width, height: geo.size.height)
            .scaledToFill()
        }
    }
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView()
    }
}
