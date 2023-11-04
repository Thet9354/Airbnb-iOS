//
//  ListingAmenitiesView.swift
//  Airbnb
//
//  Created by Phoon Thet Pine on 4/11/23.
//

import SwiftUI

struct ListingAmenitiesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("What this place offers")
                .font(.headline)
            
            ForEach(0 ..< 5) { feature in
                HStack {
                    Image(systemName: "wifi")
                        .frame(width: 32)
                    
                    Text("Wifi")
                        .font(.footnote)
                    
                    Spacer()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ListingAmenitiesView()
}
