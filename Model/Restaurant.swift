//
//  Restaurant.swift
//  RealTimeDataBase
//
//  Created by Mobility User 1 on 10/11/22.
//

import Foundation

struct RestaurantDetails: Codable {
    let restaurant: [Restaurant?]

    enum CodingKeys: String, CodingKey {
        case restaurant = "Restaurant"
    }
}

// MARK: - Restaurant
struct Restaurant: Codable {
    let res_name: String

    enum CodingKeys: String, CodingKey {
        case res_name = "res_name"
    }
}
