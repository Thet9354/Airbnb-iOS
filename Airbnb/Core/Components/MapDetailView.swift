//
//  MapDetailView.swift
//  Airbnb
//
//  Created by Phoon Thet Pine on 4/11/23.
//

import SwiftUI
import MapKit

struct MapDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("WHere you'll be")
                .font(.headline)
            
            Map()
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding()

    }
}

#Preview {
    MapDetailView()
}
