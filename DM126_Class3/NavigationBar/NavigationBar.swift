//
//  NavigationBar.swift
//  DM126_Class3
//
//  Created by mcarvalhosilva on 11/9/24.
//

import SwiftUI

struct NavigationBar: View {
    
    @State private var selectedUser: String = "Selecione um usuario"
    
    var body: some View {
        VStack {
            HStack {
                Text(selectedUser)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(selectedUser == "Selecione um usuario" ? .primary : .blue)
                Menu {
                    ForEach(usersMock, id: \.self) {
                        user in Button(user) {
                            selectedUser = user
                        }
                    }
                } label: {
                    Image(systemName: "plus.square.fill")
                        .font(.title2)
                        .foregroundStyle(.gray)
                }
            }.padding(.leading, 8)
        }
    }
}

#Preview {
    NavigationBar()
}
