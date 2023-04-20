//
//  ContentView.swift
//  artishow-poc
//
//  Created by Victor Castro on 19/04/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    @StateObject private var vm = LoginViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Usuario", text: $username).textFieldStyle(.roundedBorder)
            TextField("Contraseña", text: $password).textFieldStyle(.roundedBorder)
            Button {
                vm.signInWithGoogle()
            } label: {
                Text("Login")
            }
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
