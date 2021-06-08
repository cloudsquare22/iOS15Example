//
//  ContentView.swift
//  iOS15Example
//
//  Created by Shin Inaba on 2021/06/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "music.note.tv")
            if #available(iOS 15.0, *) {
                Image(systemName: "music.note.tv")
                    .symbolVariant(.fill)
                Image(systemName: "music.note.tv")
                    .symbolVariant(.circle)
            } else {
                // Fallback on earlier versions
            }

        }
        .font(.largeTitle)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
