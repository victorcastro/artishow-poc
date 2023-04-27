//
//  PhotosView.swift
//  artishow-poc
//
//  Created by Victor Castro on 25/04/23.
//

import SwiftUI

struct PhotosView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        VStack {
            Text("Hello, Photos!")
            Button("Pagina 2") {
                coordinator.push(.menuAccount)
            }
        }
    }
}

struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosView()
    }
}
