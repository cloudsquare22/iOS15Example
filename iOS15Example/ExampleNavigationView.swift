//
//  ExampleNavigationView.swift
//  iOS15Example
//
//  Created by Shin Inaba on 2021/06/30.
//

import SwiftUI

@available(iOS 15.0, *)
struct ExampleNavigationView: View {

    var body: some View {
        NavigationView {
            List {
                NavigationLink("Aaaa", destination: Text("aaaa"))
                NavigationLink("Bbbb", destination: Text("bbbb"))
                NavigationLink("Cccc", destination: Text("cccc"))
                NavigationLink("Dddd", destination: Text("dddd"))
            }
            .navigationTitle("Title")
            
            InitView()
        }
        .onAppear(perform: {
        })
    }
}

@available(iOS 15.0, *)
struct ExampleNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleNavigationView()
    }
}

struct DetailView: View {
    var body: some View {
        NavigationView {
            Text("Detail")
        }
    }
}

@available(iOS 15.0, *)
struct InitView: View {
    var body: some View {
        VStack {
            Text("Search")
            Image(systemName: "paintpalette")
                .symbolRenderingMode(.multicolor)
                .font(.largeTitle)
        }
    }
}
