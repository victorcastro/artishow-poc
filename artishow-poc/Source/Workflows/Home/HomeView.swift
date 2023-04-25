//
//  HomeView.swift
//  artishow-poc
//
//  Created by Victor Castro on 24/04/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            TabView {
                Text("pageOne")
                    .navigationTitle("My tab 1")
                    .tabItem {
                        Text("Home")
                    }
                
                Text("PageTwo")
                    .navigationTitle("My tab 2")
                    .tabItem {
                        Text("Favorites")
                    }
                
                VStack {
                    List {
                        Text("Item 1")
                        Text("Item 2")
                        NavigationLink(destination: MenuView()) {
                            Text("Accesos al sistema")
                        }
                    }
                    Button("Cerrar Sesión") {
                        print("action to logout")
                    }.padding().buttonStyle(.bordered)
                    
                }.tabItem {
                    Text("Menu")
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
