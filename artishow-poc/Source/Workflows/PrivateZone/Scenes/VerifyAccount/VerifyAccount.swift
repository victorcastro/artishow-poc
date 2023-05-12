//
//  MenuVerifyAccount.swift
//  artishow-poc
//
//  Created by Victor Castro on 26/04/23.
//

import SwiftUI

struct VerifyAccount: View {
    
    var body: some View {
        VStack {
            List {
                Section(header: Text("VERIFICACIÓN")) {
                    Text("Documento de Identidad")
                        .listRowSeparator(.hidden)
                    Text("Numero de celular")
                        .listRowSeparator(.hidden)
                    NavigationLink(destination: VerifyScreenView()) {
                        Text("Correo electronico")
                    }.listRowSeparator(.hidden)
                }
            }.listStyle(.plain)
            
        }
        .navigationTitle("Verificacion de cuenta")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MenuVerifyAccount_Previews: PreviewProvider {
    static var previews: some View {
        VerifyAccount()
    }
}
