//
//  ProfileView.swift
//  artishow-poc
//
//  Created by Victor Castro on 26/04/23.
//

import SwiftUI

struct MenuProfileView: View {
    var body: some View {
        VStack {
            Text("Nombres: Victor Hugo")
            Text("Apellidos: Castro")
        }.navigationTitle("Perfil de usuario")
    }
}

struct MenuProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MenuProfileView()
    }
}
