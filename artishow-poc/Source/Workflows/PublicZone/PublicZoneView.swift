//
//  PublicZoneView.swift
//  artishow-poc
//
//  Created by Victor Castro on 26/04/23.
//

import SwiftUI
import VCanvasKit

struct PublicZoneView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        VStack() {
            Spacer()
            VStack(alignment: .leading) {
                VStack {
                    HStack {
                        Text("Hola!")
                            .font(.poppins(.medium, size: 28))
                            .foregroundColor(.colorDark2)
                        HStack(spacing: 0) {
                            Text("ARTI")
                                .font(.zenTokyo(.regular, size: 28))
                                .foregroundColor(.colorDark2)
                            Text("FANATICO")
                                .font(.zenTokyo(.regular, size: 28))
                                .foregroundColor(.colorPrimary)
                            
                        }
                    }
                    .padding(.bottom, 8)
                    Text("Bienvenido a la nueva forma de conseguir una mejor experiencia en tu evento")
                        .font(.poppins(.regular, size: 14))
                        .foregroundColor(.colorDark2)
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
        .background(Color.colorPrimary)
        .ignoresSafeArea()
    }
}

struct PublicZoneView_Previews: PreviewProvider {
    static var previews: some View {
        PublicZoneView()
    }
}
