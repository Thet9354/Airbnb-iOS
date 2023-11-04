//
//  ListingFeaturesView.swift
//  Airbnb
//
//  Created by Phoon Thet Pine on 4/11/23.
//

import SwiftUI

struct ListingFeaturesView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(0 ..< 2) { feature in
                HStack(spacing: 12) {
                    Image(systemName: "medal")
                    
                    VStack(alignment: .leading) {
                        Text("Superhost")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Superhosts are experience, highly rated hosts whp are committed to providing great stars for guests")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    
                    Spacer()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ListingFeaturesView()
}
