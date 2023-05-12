//
//  ButtonBack.swift
//  artishow-poc
//
//  Created by Victor Castro on 27/04/23.
//

import SwiftUI

struct BackButton: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        Button {
            coordinator.pop()
        } label: {
            Image(systemName: "chevron.left")
                .foregroundColor(.colorDark2)
        }
    }
}
