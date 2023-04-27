//
//  LoginViewModel.swift
//  artishow-poc
//
//  Created by Victor Castro on 19/04/23.
//

import Foundation
import Firebase
import GoogleSignIn

class LoginViewModel: ObservableObject {
    
    @Published var signIn: Firebase.User? = nil
    
    func signInWithEmail(email: String, paswd: String) {
        let success = false
        Auth.auth().signIn(withEmail: email, password: paswd) { [weak self] result, error in
            if let res = result, error == nil {
                self?.signIn = res.user
            } else {
                print(error!.localizedDescription)
            }
            
        }
    }
    
    func signUpWithEmail(email: String, paswd: String) {
        Auth.auth().createUser(withEmail: email, password: paswd) { result, error in
            if let res = result, error == nil {
                self.signIn = res.user
            } else {
                print(error!.localizedDescription)
            }
        }
    }
    
    func signInWithGoogle() {
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }
        
        // Create Google Sign In configuration object.
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config
        
        // Start the sign in flow!
        GIDSignIn.sharedInstance.signIn(withPresenting: Application_RootViewController.rootViewController) { result, error in
            if let err = error {
                print(err.localizedDescription)
            }
            
            guard let user = result?.user, let idToken = user.idToken?.tokenString else { return }
            
            let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: user.accessToken.tokenString)
            
            Auth.auth().signIn(with: credential) {[weak self] res, error in
                if let err = error {
                    print(err.localizedDescription)
                }
                
                guard let user = res?.user else { return }
                self?.signIn = user
            }
        }
    }
}
