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
    @FocusState private var loginFieldFocus: LogInField?
    
    enum LogInField {
        case username
        case password
    }
    
    var body: some View {
        VStack(spacing: 40) {
            HStack(spacing: 0) {
                Text("ARTI")
                    .font(.zenTokyo(.regular, size: 28))
                Text("FAN")
                    .font(.zenTokyo(.regular, size: 28))
                    .foregroundColor(Color.colorPrimary)
            }
            
            VStack(spacing: 15) {
                VStack(alignment: .leading, spacing: 2) {
                    Text("Correo")
                        .font(.poppins(.regular, size: 12))
                        .foregroundColor(Color.colorDark3)
                    TextField("", text: $username)
                        .font(.poppins(.regular))
                        .foregroundColor(Color.colorDark2)
                        .keyboardType(.emailAddress)
                        .focused($loginFieldFocus, equals: .username)
                        .submitLabel(.next)
                        .onSubmit {
                            self.loginFieldFocus = .password
                        }
                    Divider()
                }
                
                VStack(alignment: .leading, spacing: 2) {
                    Text("Contraseña")
                        .font(.poppins(.regular, size: 12))
                        .foregroundColor(Color.colorDark3)
                    SecureField("", text: $password)
                        .font(.poppins(.regular))
                        .foregroundColor(Color.colorDark2)
                        .keyboardType(.emailAddress)
                        .focused($loginFieldFocus, equals: .password)
                        .submitLabel(.done)
                    Divider()
                }
                
                Button {
                    vm.signInWithEmail(email: username, paswd: password)
                    
                    // TODO: Change method in ViewModel
                    coordinator.isLoggedIn = true
                    coordinator.popToRoot()
                } label: {
                    Text("Iniciar Sesión").padding(12)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                }
                .background(Color.colorPrimary)
                .cornerRadius(10)
                .padding(.top, 20)
                
                
                Button {
                    coordinator.present(sheet: .password)
                } label: {
                    Text("Olvidé la contraseña")
                        .font(.poppins(.regular, size: 14))
                        .foregroundColor(Color.colorDark2)
                        .underline()
                }
            }
            
            HStack(spacing: 10) {
                VStack { Divider() }
                Text("ó")
                    .font(.poppins(.regular, size: 14))
                    .foregroundColor(Color.colorDark2)
                VStack { Divider() }
            }
            
            VStack(spacing: 15) {
                Button {
                    
                } label: {
                    HStack {
                        Image("icon-apple")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 16)
                        Text("Ingresa con Apple")
                            .font(.poppins(.regular, size: 14))
                            .foregroundColor(Color.white)
                    }
                    .padding(12)
                    .frame(maxWidth: .infinity)
                }
                .background(Color.socialApple)
                .cornerRadius(10)
                
                Button {
                    vm.signInWithGoogle()
                } label: {
                    HStack {
                        Image("icon-google")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 16)
                        Text("Ingresa con Google")
                            .font(.poppins(.regular, size: 14))
                            .foregroundColor(Color.colorDark2)
                    }
                    .padding(12)
                    .frame(maxWidth: .infinity)
                    
                }
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.colorDark3, lineWidth: 1)
                )
            }
            
            Spacer()
        }.padding(.horizontal, 38)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButton())
            .background(Color.white)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    loginFieldFocus = .username
                }
            }
            .onTapGesture {
                self.hideKeyboard()
            }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
