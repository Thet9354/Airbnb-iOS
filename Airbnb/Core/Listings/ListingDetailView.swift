//
//  ListingDetailView.swift
//  Airbnb
//
//  Created by Phoon Thet Pine on 4/11/23.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    // MARK: - PROPERTIES
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",

    ]
    
    @Environment(\.dismiss) var dismiss
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView()
                    .frame(height: 270)
                
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                })
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        
                        Text("4.86")
                        
                        Text(" - ")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .font(.caption)
                    .foregroundStyle(.black)
                    
                    Text("Miami, Florida")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            // HOST INFO VIEW
            HostInfoView()
            
            Divider()
            
            // LISTING FEATURE
            ListingFeaturesView()
            
            Divider()
            
            // BEDROOM VIEW
            BedroomView()
            
            Divider()
            
            // Listing Amenities
            ListingAmenitiesView()
            
            Divider()
            
            // MapView
            MapDetailView()
            
        }
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom) {
            CallToActionView()
        }
    }
}

#Preview {
    ListingDetailView()
}
