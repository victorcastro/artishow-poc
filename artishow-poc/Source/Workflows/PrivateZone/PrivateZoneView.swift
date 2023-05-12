//
//  PrivateZoneView.swift
//  artishow-poc
//
//  Created by Victor Castro on 25/04/23.
//

import SwiftUI

struct PrivateZoneView: View {
    
    @State var isArtistEnabled = true
    
    var body: some View {
        NavigationView {
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                
                FavoritesView()
                    .tabItem {
                        Label("Favorites", systemImage: "heart.fill")
                    }
                
                if isArtistEnabled {
                    ArtishowView()
                        .tabItem {
                            Label("Artist", systemImage: "figure.wave")
                        }
                }
                
                MenuView()
                    .tabItem {
                        Label("Menu", systemImage: "line.3.horizontal")
                    }
            }
            
        }// .accentColor(Color.primary)
    }
}

struct PrivateZoneView_Previews: PreviewProvider {
    static var previews: some View {
        PrivateZoneView()
    }
}
