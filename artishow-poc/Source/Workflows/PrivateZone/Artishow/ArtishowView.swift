//
//  ArtishowView.swift
//  artishow-poc
//
//  Created by Victor Castro on 25/04/23.
//

import SwiftUI

struct ArtishowView: View {
    var body: some View {
        VStack(spacing: 20) {
            Circle()
                .foregroundColor(.red)
            
                .frame(maxWidth: 150)
                
            Text("Hola, Soy CariLocuras")
            Text("5.4")
            
            List {
                Section(header: Text("PERSONAJE")) {
                    Text("Mi personake")
                    Text("Mis calificaciones")
                    Text("Zonas de trabajo")
                }
            }
        }
    }
}

struct ArtishowView_Previews: PreviewProvider {
    static var previews: some View {
        ArtishowView()
    }
}
