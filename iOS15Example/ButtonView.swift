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
                    .buttonStyle(BorderedButtonStyle(shape: .roundedRectangle))
                Button("Register", action: {})
                    .buttonStyle(BorderedButtonStyle(shape: .capsule))
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
        }
    }
}

@available(iOS 15.0, *)
struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
