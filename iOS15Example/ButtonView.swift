//
//  ButtonView.swift
//  iOS15Example
//
//  Created by Shin Inaba on 2021/06/10.
//

import SwiftUI

@available(iOS 15.0, *)
struct ButtonView: View {
    var body: some View {
        VStack {
            HStack {
                Button("Sign In", action: {})
                    .buttonStyle(BorderedButtonStyle())
                Button("Register", action: {})
                    .buttonStyle(BorderedButtonStyle())
            }
            Button("Delete", role: .destructive, action: {})
                .buttonStyle(.bordered)
            Button(action: {}, label: {
                Label("Label", systemImage: "circle.hexagongrid.fill")
                    .symbolRenderingMode(.multicolor)
            })
            .buttonStyle(.bordered)
            Button(action: {}, label: {
                Label("Label", systemImage: "paperplane.circle")
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.red, .green)
            })
            .buttonStyle(.bordered)
            Button(action: {}, label: {
                Label("Label", systemImage: "paperplane.circle")
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.red, .green).padding()
            })
            .buttonStyle(RedBorderedButtonStyle())
            Text("Favorite Card Suit")
                .padding()
                .contextMenu {
                    Button("♥️ - Hearts", role: .destructive, action: {})
                    Button("♣️ - Clubs", action: {})
                    Button("♠️ - Spades", action: {})
                    Button("♦️ - Diamonds", action: {})
                }
        }
    }
}

@available(iOS 15.0, *)
struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}

struct RedBorderedButtonStyle: PrimitiveButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(configuration)
            .border(Color.red)
    }
}
