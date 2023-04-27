//
//  VerifyScreenView.swift
//  artishow-poc
//
//  Created by Victor Castro on 26/04/23.
//

import SwiftUI

struct VerifyScreenView: View {
    
    @State var correo = ""
    
    var body: some View {
        VStack {
            TextField("Correo", text: $correo)
        }.navigationTitle("Verificación de correo")
        
    }
}

struct VerifyScreenView_Previews: PreviewProvider {
    static var previews: some View {
        VerifyScreenView()
    }
}
