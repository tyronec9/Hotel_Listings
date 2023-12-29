//
//  HotelDetailView.swift
//  Hotel_Listings
//
//  Created by Tyrone Collins on 12/25/23.
//

import SwiftUI

struct HomeDetailView: View {
    let model: HomeListing
   
    var body: some View {
        VStack(alignment: .leading) {
            GeometryReader { proxy in
                ScrollView(.vertical) {
                    //Picture
                    AsyncImage(url: URL(string: model.xl_picture_url ))
                        .frame(width:proxy.frame(in: .global).width, height: proxy.frame(in: .global).width)
                        .aspectRatio(contentMode: .fit)
                        .clipped()
                    
                    //Info
                    Text(model.name ?? "")
                        .bold()
                        .padding()
                    
                    if let price = model.price {
                        Text("Nightly Rate: \(price.formatted(.currency(code: "USD")))")
                    }
                    
                    Text("Description: \(model.description ?? "")")
                        .padding()
                    Text("Summary: \(model.summary ?? "")")
                        .padding()
                    Text("House Rules: \(model.house_rules ?? "")")
                        .padding()
                    Text("Space: \(model.space ?? "")")
                        .padding()
                    
                    //Host Info
                    Text("About Your Host")
                        .font(.title)
                        .bold()
                        
                    HStack {
                        AsyncImage(url: URL(string: model.host_picture_url))
                            .frame(width: 75, height: 75)
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        
                        Text(model.host_name)
                            .bold()
                    }
                    .padding()
                    
                    Text("Hosting Since:\(model.host_since)")
                }
                .frame(maxWidth: proxy.frame(in: .global).width)
            }
        }
        .navigationTitle(model.name ?? "Listing")
    }
}
