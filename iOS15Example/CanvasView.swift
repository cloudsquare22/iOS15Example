//
//  CanvasView.swift
//  iOS15Example
//
//  Created by Shin Inaba on 2021/06/10.
//

import SwiftUI

@available(iOS 15.0, *)
struct CanvasView: View {
    var body: some View {
        VStack {
            Canvas { context, size in
                context.stroke(
                        Path(ellipseIn: CGRect(origin: .zero, size: size)),
                        with: .color(.green),
                        lineWidth: 4)
                context.draw(Image(systemName: "lanyardcard"), at: CGPoint(x: size.width / 2, y: size.height / 2))
            }
            .frame(width: 300, height: 200)
            .border(Color.blue)
        }
    }
}

@available(iOS 15.0, *)
struct CanvasView_Previews: PreviewProvider {
    static var previews: some View {
        CanvasView()
    }
}
