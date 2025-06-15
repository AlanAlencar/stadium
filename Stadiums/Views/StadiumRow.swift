//
//  StadiumRow.swift
//  Stadiums
//
//  Created by Alan Alencar on 14/06/25.
//

import SwiftUI

struct StadiumRow: View {
    
    var stadium: Stadium
    
    var body: some View {
        HStack {
            stadium.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(stadium.name)
            
            Spacer()
        }        
    }
}

#Preview {
    Group {
        StadiumRow(stadium: stadiums[0])
        StadiumRow(stadium: stadiums[1])
    }
}
