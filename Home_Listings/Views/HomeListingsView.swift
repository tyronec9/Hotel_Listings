//
//  HotelListingView.swift
//  Hotel_Listings
//
//  Created by Tyrone Collins on 12/25/23.
//

import SwiftUI

struct HomeListingsView: View {
    @StateObject var viewModel = HomeListingViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.listings.isEmpty{
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                } else {
                    List(viewModel.listings) { listing in
                        NavigationLink(destination: HomeDetailView(model: listing), label:
                                        { HomeListingCardView(model: listing)
                        })
                        .navigationTitle("Home Listings")
                    }
                    .onAppear {
                        viewModel.fetchListings()
                    }
                }
            }
        }
    }
    
}
