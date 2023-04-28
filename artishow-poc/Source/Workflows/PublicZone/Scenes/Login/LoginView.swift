//
//  ContentView.swift
//  artishow-poc
//
//  Created by Victor Castro on 19/04/23.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    @StateObject private var vm = LoginViewModel()
    
    var body: some View {
        VStack(spacing: 40) {
            
            Spacer()
            VStack(spacing: 15) {
                TextField("Usuario", text: $username).textFieldStyle(.roundedBorder)
                TextField("Contraseña", text: $password).textFieldStyle(.roundedBorder)
                HStack {
                    Button {
                        vm.signInWithEmail(email: username, paswd: password)
                        
                        // TODO: Change method in ViewModel
                        coordinator.isLoggedIn = true
                        coordinator.popToRoot()
                    } label: {
                        Text("Login").padding(12)
                            .background(Color.accentColor)
                            .foregroundColor(.white)
                    }
                    
                    Button("Olvidé contraseña") {
                        coordinator.present(sheet: .password)
                    }
                }
            }
            
            Text("O inicia sesión con").font(.zenTokyo(.regular))
            
            Button {
                vm.signInWithGoogle()
            } label: {
                Text("Sign in with Google")
                    .padding(12)
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                
            }
        }.padding()
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButton())
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
