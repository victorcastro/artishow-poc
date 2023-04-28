//
//  PublicZoneView.swift
//  artishow-poc
//
//  Created by Victor Castro on 26/04/23.
//

import SwiftUI

struct PublicZoneView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        VStack() {
            Spacer()
            Image("splash-clown")
                .resizable()
                .scaledToFit()
                .frame(width: 370)
                .position(x: 250, y: 350)
            Spacer()
            VStack(alignment: .leading) {
                VStack {
                    HStack {
                        Text("Hola!")
                            .font(.poppins(.medium, size: 28))
                            .foregroundColor(Color.dark2)
                        HStack(spacing: 0) {
                            Text("ARTI")
                                .font(.zenTokyo(.regular, size: 28))
                                // .font(.poppins(.bold, size: 30))
                                .foregroundColor(Color.dark2)
                            Text("FANATICO")
                                .font(.zenTokyo(.regular, size: 28))
                                // .font(.poppins(.bold, size: 30))
                                .foregroundColor(Color.primary)
                                
                        }
                    }
                    .padding(.bottom, 8)
                    
                    Text("Bienvenido a la nueva forma de conseguir una mejor experiencia en tu evento")
                        .font(.poppins(.regular, size: 14))
                        .foregroundColor(Color.dark2)
                        .padding(.bottom, 20)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .padding(.horizontal, 38)
                
                TabOptionTwo()
                
                
            }
            .frame(maxWidth: .infinity)
            .padding(.top, 50)
            .background(.white)
            .cornerRadius(40, corners: .topLeft)
            .cornerRadius(40, corners: .topRight)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.primary)
        .ignoresSafeArea()
    }
}

struct PublicZoneView_Previews: PreviewProvider {
    static var previews: some View {
        PublicZoneView()
    }
}
