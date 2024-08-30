//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Mark Nair on 8/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .imageScale(.large)
                .foregroundStyle(.orange)
                .padding()
            Text("You Are Awesome!")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .italic()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
