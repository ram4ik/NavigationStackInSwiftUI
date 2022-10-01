//
//  ContentView.swift
//  NavigationStackInSwiftUI
//
//  Created by Ramill Ibragimov on 01.10.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("One", value: "First value")
                NavigationLink("Two", value: "Second value")
                NavigationLink("Three", value: Color.blue)
            }
            .navigationTitle("Navigation Stack")
            .navigationDestination(for: String.self, destination: { value in
                Text(value)
            })
            .navigationDestination(for: Color.self) { value in
                Text("Value")
                    .font(.largeTitle)
                    .foregroundColor(value)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
