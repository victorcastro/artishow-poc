//
//  TabOptionTwo.swift
//  artishow-poc
//
//  Created by Victor Castro on 27/04/23.
//

import SwiftUI

struct TabOptionTwo: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        HStack {
            Button {
                coordinator.push(.register)
            } label: {
                VStack(alignment: .leading, spacing: -3) {
                    Text("Soy nuevo, quiero")
                        .font(.poppins(.regular, size: 11))
                        .foregroundColor(Color.dark3)
                    ZStack(alignment: .bottomLeading) {
                        Text("Registrarme")
                            .font(.poppins(.semiBold, size: 16))
                            .foregroundColor(Color.dark2)
                        Rectangle()
                            .fill(Color.primary)
                            .frame(width: 20, height: 2)
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.top, 10)
            .padding(.bottom, 34)
            
            
            Button {
                coordinator.push(.login)
            } label: {
                Text("Ingresar")
                    .font(.poppins(.semiBold, size: 26))
                    .foregroundColor(Color.white)
            }
            .frame(maxWidth: .infinity)
            .padding(.top, 10)
            .padding(.bottom, 34)
            .background(Color.primary)
            .cornerRadius(50, corners: .topLeft)
        }
        .padding(.top, 20)
        .background(Color.tertiary)
        .cornerRadius(50, corners: .topLeft)
    }
}


