//
//  Stadium.swift
//  Stadiums
//
//  Created by Alan Alencar on 14/06/25.
//

import Foundation
import SwiftUI
import CoreLocation

struct Stadium: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var opened_in: String
    var city: String
    var state: String
    var capacity: Int
    var largest_audience: Int
    var description: String
    
    private var image_name: String
    var image: Image {
        Image(image_name)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
