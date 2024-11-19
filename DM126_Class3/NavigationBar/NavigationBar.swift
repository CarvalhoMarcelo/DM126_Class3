//
//  NavigationBar.swift
//  DM126_Class3
//
//  Created by mcarvalhosilva on 11/9/24.
//

import SwiftUI

struct NavigationBar: View {
    
    @State private var selectedUser: String = "Selecione um usuario"
    @State private var users: [String] = usersMock
    @State private var isAddingUser: Bool = false
    @State private var showAddUserAlert: Bool = false
    @State private var newUser: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    
                }) {
                    Text(selectedUser)
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(selectedUser == "Selecione um usuario" ? .primary : .blue)
                }
                Button(action: {
                    isAddingUser.toggle()
                }) {
                    Image(systemName: "plus.square.fill")
                        .font(.title2)
                        .foregroundStyle(.gray)
                }.padding(.leading, 8)
            }.padding()
            if isAddingUser {
                HStack {
                    TextField("Digite o nome", text: $newUser)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button("Adicionar") {
                        if !newUser.isEmpty {
                            usersMock.append(newUser)
                            newUser = ""
                            isAddingUser = false
                        }
                    }.buttonStyle(BorderlessButtonStyle())
                }.padding(.horizontal)
            }
            Menu {
                ForEach(usersMock, id: \.self) {
                    user in Button(user) {
                        selectedUser = user
                    }
                }
            } label: {
                EmptyView()
            }
        }
    }
}

#Preview {
    NavigationBar()
}
