//
//  HomeListingView.swift
//  Home_Listings
//
//  Created by Tyrone Collins on 12/26/23.
//

import Foundation

final class HomeListingViewViewModel: ObservableObject {
    private let service = ApiService()
    
    @Published var listings: [HomeListing] = []
    
    public func fetchListings() {
        service.getListings {
            [weak self] Result in
            switch Result {
            case .success(let models):
                self?.listings = models
            case .failure:
                break
            }
        }
    }
}
