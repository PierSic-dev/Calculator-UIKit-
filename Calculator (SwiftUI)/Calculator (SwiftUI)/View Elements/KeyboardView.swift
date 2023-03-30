//
//  KeyboardView.swift
//  Calculator (SwiftUI)
//
//  Created by Pierpaolo Siciliano on 29/03/23.
//

import SwiftUI

struct KeyboardView: View {
    var body: some View {
        Grid {
            GridRow {
                Button {
                    print("code missing")
                } label: {
                    Text("AC")
                        .frame(
                            maxWidth: .infinity,
                            maxHeight: .infinity,
                            alignment: .leading
                        )
                        .font(.system(size: 300))
                        .minimumScaleFactor(0.01)
                }
                .buttonStyle(DefaultWide())
                .gridCellColumns(2)
                Button {
                    print("code missing")
                } label: {
                    Text("+/-")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .font(.system(size: 300))
                        .minimumScaleFactor(0.01)
                }
                .buttonStyle(Default())
                Button {
                    print("code missing")
                } label: {
                    Text("÷")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .font(.system(size: 300))
                        .minimumScaleFactor(0.01)
                }
                .buttonStyle(Operation())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            GridRow {
                Button {
                    print("code missing")
                } label: {
                    Text("7")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .font(.system(size: 300))
                        .minimumScaleFactor(0.01)
                }
                .buttonStyle(Default())
                Button {
                    print("code missing")
                } label: {
                    Text("8")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .font(.system(size: 300))
                        .minimumScaleFactor(0.01)
                }
                .buttonStyle(Default())
                Button {
                    print("code missing")
                } label: {
                    Text("9")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .font(.system(size: 300))
                        .minimumScaleFactor(0.01)
                }
                .buttonStyle(Default())
                Button {
                    print("code missing")
                } label: {
                    Text("×")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .font(.system(size: 300))
                        .minimumScaleFactor(0.01)
                }
                .buttonStyle(Operation())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            GridRow {
                Button {
                    print("code missing")
                } label: {
                    Text("4")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .font(.system(size: 300))
                        .minimumScaleFactor(0.01)
                }
                .buttonStyle(Default())
                Button {
                    print("code missing")
                } label: {
                    Text("5")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .font(.system(size: 300))
                        .minimumScaleFactor(0.01)
                }
                .buttonStyle(Default())
                Button {
                    print("code missing")
                } label: {
                    Text("6")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .font(.system(size: 300))
                        .minimumScaleFactor(0.01)
                }
                .buttonStyle(Default())
                Button {
                    print("code missing")
                } label: {
                    Text("-")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .font(.system(size: 300))
                        .minimumScaleFactor(0.01)
                }
                .buttonStyle(Operation())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            GridRow {
                Button {
                    print("code missing")
                } label: {
                    Text("1")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .font(.system(size: 300))
                        .minimumScaleFactor(0.01)
                }
                .buttonStyle(Default())
                Button {
                    print("code missing")
                } label: {
                    Text("2")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .font(.system(size: 300))
                        .minimumScaleFactor(0.01)
                }
                .buttonStyle(Default())
                Button {
                    print("code missing")
                } label: {
                    Text("3")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .font(.system(size: 300))
                        .minimumScaleFactor(0.01)
                }
                .buttonStyle(Default())
                Button {
                    print("code missing")
                } label: {
                    Text("+")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .font(.system(size: 300))
                        .minimumScaleFactor(0.01)
                }
                .buttonStyle(Operation())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            GridRow {
                Button {
                    print("code missing")
                } label: {
                    Text("0")
                        .frame(
                            maxWidth: .infinity,
                            maxHeight: .infinity,
                            alignment: .leading
                        )
                        .font(.system(size: 300))
                        .minimumScaleFactor(0.01)
                }
                .buttonStyle(DefaultWide())
                .gridCellColumns(2)
                Button {
                    print("code missing")
                } label: {
                    Text(".")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .font(.system(size: 300))
                        .minimumScaleFactor(0.01)
                }
                .buttonStyle(Default())
                Button {
                    print("code missing")
                } label: {
                    Text("=")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .font(.system(size: 300))
                        .minimumScaleFactor(0.01)
                }
                .buttonStyle(Operation())
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView()
    }
}
