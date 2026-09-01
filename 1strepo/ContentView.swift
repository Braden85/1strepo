//
//  ContentView.swift
//  1strepo
//
//  Created by Lee Guan Yi Braden on 31/8/26.
// Name of app Is CNU (channel news useless)
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {

            VStack(alignment: .leading, spacing: 10) {
                
                Text("Chanenl News Useless - The very website where you can find the most useless news")
                    .font(.caption2)
               
                Text("News 1")
                    .font(.headline)
             
                Text("News 2")
                    .font(.headline)
                    
                Spacer()
            }
            .padding(.horizontal)
            .navigationTitle("CNU")
        }
    }
}

#Preview {
    ContentView()
}
