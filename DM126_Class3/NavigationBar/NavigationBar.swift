//
//  NavigationBar.swift
//  DM126_Class3
//
//  Created by mcarvalhosilva on 11/9/24.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack {
            Button("Marcelo Carvalho") {
            }
            .font(.headline)
            .fontWeight(.bold)
            Button(action:{}){
                Image(systemName: "plus.square.fill")
            }.font(.title2).foregroundStyle(.gray)
        }
    }
}

#Preview {
    NavigationBar()
}
