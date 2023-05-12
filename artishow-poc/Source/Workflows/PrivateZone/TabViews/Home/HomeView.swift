//
//  HomeView.swift
//  artishow-poc
//
//  Created by Victor Castro on 24/04/23.
//

import SwiftUI

struct HomeView: View {
    
    let data = (1...12).map { "Item \($0)" }
    
    let columns = [
        GridItem(.flexible(), spacing: 15),
        GridItem(.flexible(), spacing: 15),
    ]
    
    @State private var scrollViewContentSize: CGSize = .zero
    
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    
                    // Avatar Category
                    VStack(spacing: 5) {
                        ZStack(alignment: .center) {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.colorPrimary)
                            
                            Image("cat-all")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 40)
                        }
                        .frame(width: 60, height: 60)
                        
                        Text("Todos")
                            .font(.poppins(.regular, size: 11))
                    }
                    
                    // Avatar Category
                    VStack(spacing: 5) {
                        ZStack(alignment: .center) {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.colorDark4)
                            
                            Image("cat-dalinas")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 40)
                        }
                        .frame(width: 60, height: 60)
                        
                        Text("Dalinas")
                            .font(.poppins(.regular, size: 11))
                    }
                    
                    // Avatar Category
                    VStack(spacing: 5) {
                        ZStack(alignment: .center) {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.colorDark4)
                            
                            Image("cat-clowns")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 40)
                        }
                        .frame(width: 60, height: 60)
                        
                        Text("Payasos")
                            .font(.poppins(.regular, size: 11))
                    }
                    
                    // Avatar Category
                    VStack(spacing: 5) {
                        ZStack(alignment: .center) {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.colorDark4)
                            
                            Image("cat-mariachis")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 40)
                        }
                        .frame(width: 60, height: 60)
                        
                        Text("Mariachis")
                            .font(.poppins(.regular, size: 11))
                    }
                    
                    // Avatar Category
                    VStack(spacing: 5) {
                        ZStack(alignment: .center) {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.colorDark4)
                            
                            Image("cat-djs")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 40)
                        }
                        .frame(width: 60, height: 60)
                        
                        Text("DJs")
                            .font(.poppins(.regular, size: 11))
                    }
                    
                    // Avatar Category
                    VStack(spacing: 5) {
                        ZStack(alignment: .center) {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.colorDark4)
                            
                            Image("cat-decorations")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 40)
                        }
                        .frame(width: 60, height: 60)
                        
                        Text("Decoracion")
                            .font(.poppins(.regular, size: 11))
                    }
                }
            }.padding()

            ScrollView {
                LazyVGrid(columns: columns, alignment: .center, spacing: 15) {
                    ForEach(data, id: \.self) { item in
                        ZStack {
                            GeometryReader { geometry in
                                
                                Image("dal1")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: geometry.size.width)
                                    .cornerRadius(20.0)
                                    .clipped()
                            }
                        }
                        .frame(height: 350)
                    }
                }
                .padding(.horizontal)
                .background(
                    GeometryReader { geo -> Color in
                        DispatchQueue.main.async {
                            scrollViewContentSize = geo.size
                            print(geo.safeAreaInsets.bottom)
                        }
                        return Color.clear
                    }
                )
            }
            .frame(maxHeight: scrollViewContentSize.height)
            
            Rectangle().frame(height: 0)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
