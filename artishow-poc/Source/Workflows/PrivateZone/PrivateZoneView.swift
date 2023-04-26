//
//  PrivateZoneView.swift
//  artishow-poc
//
//  Created by Victor Castro on 25/04/23.
//

import SwiftUI

struct PrivateZoneView: View {
    var body: some View {
        NavigationView {
            TabView {
                HomeView()
                    .tabItem {
                        Text("Home")
                    }
                
                FavoritesView()
                    .tabItem {
                        Text("Favorites")
                    }
                
                MenuView()
                    .tabItem {
                        Text("Menu")
                    }
            }
        }
    }
}

struct PrivateZoneView_Previews: PreviewProvider {
    static var previews: some View {
        PrivateZoneView()
    }
}
