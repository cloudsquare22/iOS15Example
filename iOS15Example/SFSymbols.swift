//
//  SFSymbols.swift
//  iOS15Example
//
//  Created by Shin Inaba on 2021/06/09.
//

import SwiftUI

@available(iOS 15.0, *)
struct SFSymbols: View {
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "music.note.tv")
                Text("music.note.tv")
                    .font(.caption)
            }
            .padding()
            HStack {
                VStack {
                    Image(systemName: "music.note.tv.fill")
                    Text("music.note.tv.fill")
                        .font(.caption)
                }
                .padding()
                VStack {
                    Image(systemName: "music.note.tv")
                        .symbolVariant(.fill)
                    Text("symbolVariant(.fill)")
                        .font(.caption)
                }
                .padding()
            }
            VStack {
                Image(systemName: "music.note.tv")
                    .symbolVariant(.circle)
                Text("symbolVariant(.circle)\nないものは変化無し")
                    .font(.caption)
            }
            .padding()
            VStack {
                Image(systemName: "thermometer.sun.fill")
                Text("thermometer.sun.fill")
                    .font(.caption)
            }
            HStack {
                VStack {
                    Image(systemName: "thermometer.sun.fill")
                        .symbolRenderingMode(.multicolor)
                    Text("symbolRenderingMode(.multicolor)")
                        .font(.caption)
                }
                .padding()
                VStack {
                    Image(systemName: "thermometer.sun.fill")
                        .symbolRenderingMode(.hierarchical)
                    Text("symbolRenderingMode(.hierarchical)")
                        .font(.caption)
                }
                .padding()
                VStack {
                    Image(systemName: "thermometer.sun.fill")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.red, .orange)
                    Text("symbolRenderingMode(.palette)")
                        .font(.caption)
                }
                .padding()
            }
        }
        .font(.largeTitle)
    }
}

@available(iOS 15.0, *)
struct SFSymbols_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SFSymbols()
                .preferredColorScheme(.dark)
        }
    }
}
