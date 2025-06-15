//
//  MapView.swift
//  Stadiums
//
//  Created by Alan Alencar on 14/06/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: -19.865_695_445_178_307, longitude: -43.971_142_234_661_34))
}
