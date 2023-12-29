//
//  HotelListingCardView.swift
//  Hotel_Listings
//
//  Created by Tyrone Collins on 12/25/23.
//

import SwiftUI

struct HomeListingCardView: View {
    let model: HomeListing
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: model.thumbnail_url ?? ""))
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipped()
            
            VStack {
                Text(model.name ?? "Listing")
                    .lineLimit(1)
                    .font(.title3)
                    .bold()
                
                Text(model.description ?? "Listing")
                    .lineLimit(3)
                    .foregroundColor(Color(.secondaryLabel))
                    .font(.body)
            }
        }
    }
}
