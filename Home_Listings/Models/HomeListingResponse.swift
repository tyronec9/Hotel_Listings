//
//  HotelListingResponse.swift
//  Hotel_Listings
//
//  Created by Tyrone Collins on 12/25/23.
//

import Foundation

struct HomeListingResponse: Codable {
    let total_count: Int
    let results: [HomeListing]
}
