//
//  PublicZoneView.swift
//  artishow-poc
//
//  Created by Victor Castro on 26/04/23.
//

import SwiftUI

struct PublicZoneView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                HStack {
                    Button("Registrarme") {
                        coordinator.push(.register)
                    }.buttonStyle(.bordered)
                    Button("Ingresar") {
                        coordinator.push(.login)
                    }.buttonStyle(.bordered)
                }
            }
        }
    }
}

struct PublicZoneView_Previews: PreviewProvider {
    static var previews: some View {
        PublicZoneView()
    }
}
