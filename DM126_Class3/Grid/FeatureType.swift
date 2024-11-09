//
//  FeatureType.swift
//  DM126_Class3
//
//  Created by mcarvalhosilva on 11/9/24.
//

import SwiftUI

struct FeatureType: View {
    let service : ServiceType
    var body: some View {
        VStack {
            Image(service.imagem)
                .scaledToFit()
                .cornerRadius(20)
                .fixedSize(horizontal: true, vertical: true)
            Text(service.nome)
                .font(.system(size: 20))
        }.frame(width: 80, height: 80)
    }
}

#Preview {
    FeatureType(service:
        ServiceType(id: 4,
                    nome: "Coffee time",
                    imagem: "App Icon"))
}
