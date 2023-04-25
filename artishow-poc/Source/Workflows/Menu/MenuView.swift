//
//  MenuView.swift
//  artishow-poc
//
//  Created by Victor Castro on 24/04/23.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
            List {
                Text("Cambiar contraseña")
                Text("Cambiar correo")
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
