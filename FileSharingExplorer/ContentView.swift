//
//  ContentView.swift
//  FileSharingExplorer
//
//  Created by Bennett Smith on 5/20/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button("Read and Write") {
                let data = Data("Test Message".utf8)
                let url = URL.documentsDirectory.appending(path: "message.txt")
                
                do {
                    try data.write(to: url, options: [.atomic, .completeFileProtection])
                    let input = try String(contentsOf: url)
                    print(input)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
