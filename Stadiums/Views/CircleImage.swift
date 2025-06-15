//
//  CircleImage.swift
//  Stadiums
//
//  Created by Alan Alencar on 14/06/25.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        // TODO: - Verificar se o tamanho da imagem ficou bacana no app.
        image
            .resizable()
            // FIXME: - O tamanho poderá ser alterado posteriormente.
            .frame(width: 240, height: 240)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 5)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("maracana"))
}
