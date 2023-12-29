//
//  HotelListingResponse.swift
//  Hotel_Listings
//
//  Created by Young Khaliq on 12/25/23.
//

import Foundation

struct HotelListingResponse: Codable {
    let total_count: Int
    let results: [HotelListing]
}
