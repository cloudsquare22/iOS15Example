//
//  Annimation.swift
//  iOS15Example
//
//  Created by Shin Inaba on 2021/07/05.
//

import SwiftUI

struct Annimation: View {
    @State private var rotation: Double = 0
    @State private var rotationDefault: Double = 0

    var body: some View {
        VStack {
            Image(systemName: "paperplane.circle.fill")
                .font(.largeTitle)
                .rotationEffect(.degrees(self.rotation))
            Image(systemName: "paperplane.circle.fill")
                .font(.largeTitle)
                .rotationEffect(.degrees(self.rotationDefault))
        }
        .onAppear {
            withAnimation(Animation.linear(duration: 1.5).repeatForever(autoreverses: false)) {
                self.rotation = 360
            }
            withAnimation(Animation.default.repeatForever(autoreverses: false).speed(0.2)) {
                self.rotationDefault = 360
            }
        }
    }
}

struct Annimation_Previews: PreviewProvider {
    static var previews: some View {
        Annimation()
    }
}
