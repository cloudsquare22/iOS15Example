//
//  iOS15ExampleApp.swift
//  iOS15Example
//
//  Created by Shin Inaba on 2021/06/09.
//

import SwiftUI

@main
struct iOS15ExampleApp: App {
    var body: some Scene {
        WindowGroup {
//            ContentView()
            if #available(iOS 15.0, *) {
                SFSymbols()
            } else {
                // Fallback on earlier versions
            }
        }
    }
}
