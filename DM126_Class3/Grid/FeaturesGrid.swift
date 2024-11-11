//
//  FeaturesGrid.swift
//  DM126_Class3
//
//  Created by mcarvalhosilva on 11/9/24.
//

import SwiftUI

struct FeaturesGrid: View {
    
    var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible()),
                     count: 3)
    }
    
    var body: some View {
        ScrollView {
            LazyHGrid(rows: gridLayout){
                ForEach(servicesMock){
                    service in FeatureType(service: service)
                }
            }
            .frame(height: 1300)
            .padding(.horizontal, 15)
            .padding(.top, 15)
        }.scrollIndicators(.visible)
    }
}

#Preview {
    FeaturesGrid()
}
