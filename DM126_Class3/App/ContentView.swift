//
//  ContentView.swift
//  DM126_Class3
//
//  Created by mcarvalhosilva on 11/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBar()
            FeaturesGrid()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}