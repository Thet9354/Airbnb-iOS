//
//  HostInfoView.swift
//  Airbnb
//
//  Created by Phoon Thet Pine on 4/11/23.
//

import SwiftUI

struct HostInfoView: View {
    var body: some View {
        // HOST INFO VIEW
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text("Entire villa hosted by John Smith")
                    .font(.headline)
                    .frame(width: 250, alignment: .leading)
                
                HStack(spacing: 2) {
                    Text("4 guests -")
                    Text("4 bedrooms -")
                    Text("4 beds -")
                    Text("3 baths")

                }
                .font(.caption)
            }
            .frame(width: 300, alignment: .leading)
            
            
            Spacer()
            
            Image("female-profile-photo")
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
        }
        .padding()
    }
}

#Preview {
    HostInfoView()
}
