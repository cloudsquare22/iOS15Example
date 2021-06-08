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
            Image(systemName: "music.note.tv")
            Image(systemName: "music.note.tv")
                .symbolVariant(.fill)
            Image(systemName: "music.note.tv")
                .symbolVariant(.circle)
        }
        .font(.largeTitle)
        .padding()
    }
}

@available(iOS 15.0, *)
struct SFSymbols_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbols()
    }
}
