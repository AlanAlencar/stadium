//
//  StadiumList.swift
//  Stadiums
//
//  Created by Alan Alencar on 15/06/25.
//

import SwiftUI

struct StadiumList: View {
    var body: some View {
        NavigationSplitView {
            List(stadiums) { stadium in
                NavigationLink {
                    StadiumDetail(stadium: stadium)
                } label: {
                    StadiumRow(stadium: stadium)
                }
            }
            .navigationTitle("Estádios")
        } detail: {
            Text("Selecione um estádio")
        }
    }
}

#Preview {
    StadiumList()
}
