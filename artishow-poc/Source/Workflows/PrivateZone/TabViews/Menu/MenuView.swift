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
        NavigationView {
            VStack {
                List {
                    Section(header: Text("CUENTA")) {
                        Text("Accesos al sistema")
                        Text("Nombres completos")
                        NavigationLink(destination: VerifyAccount()) {
                            Text("Verificación de cuenta")
                        }
                    }
                }.listStyle(.plain)
                
                Button("Cerrar sesión") {
                    // TODO: Change method in ViewModel
                    coordinator.isLoggedIn = false
                }.padding()
                    .buttonStyle(.bordered)
            }.navigationTitle("Menu principal")
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
