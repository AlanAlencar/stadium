//
//  StadiumDetail.swift
//  Stadiums
//
//  Created by Alan Alencar on 15/06/25.
//

import SwiftUI

struct StadiumDetail: View {
    
    var stadium: Stadium
    
    var body: some View {
        VStack {
            ScrollView {
                MapView(coordinate: stadium.locationCoordinate)
                    .frame(height: 300)
                
                CircleImage(image: stadium.image)
                    .offset(y: -110)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text("Estadio")
                        .font(.title)
                    HStack {
                        Text(stadium.name)
                        
                        Spacer()
                        
                        Text(stadium.opened_in)
                    }
                    .padding(.bottom, 5)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    Text("Localização")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Text(stadium.city)
                        
                        Text(stadium.state)
                    }
                    .padding(.bottom, 5)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    Text("Capacidade")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Text("\(stadium.capacity) presentes")
                        
                        Spacer()
                        
                        Text("Maior Público: \(stadium.largest_audience)")
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    Divider()
                    
                    
                    Text("História")
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text(stadium.description)
                }
                .padding()
            }
        }
        .navigationTitle(stadium.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    StadiumDetail(stadium: stadiums[0])
}
