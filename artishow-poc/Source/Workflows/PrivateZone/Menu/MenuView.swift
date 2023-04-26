//
//  MenuView.swift
//  artishow-poc
//
//  Created by Victor Castro on 24/04/23.
//

import SwiftUI

struct MenuView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        VStack {
            List {
                Text("Cambiar contraseña")
                Text("Cambiar correo")
            }
            
            Button("Cerrar sesión") {
                // TODO: Change method in ViewModel
                coordinator.isLoggedIn = false
            }
        }
        .navigationTitle("Accesos al sistema")
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
