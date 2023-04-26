//
//  Coordinator.swift
//  artishow-poc
//
//  Created by Victor Castro on 25/04/23.
//

import SwiftUI

class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    @Published var isLoggedIn = false
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    func present(fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    func dismissFullScreenCover() {
        self.fullScreenCover = nil
    }
}

extension Coordinator {
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .privateZone:
            PrivateZoneView()
            
        case .login:
            LoginView()
            
        case .register:
            RegisterView()
        }
    }
    
    @ViewBuilder
    func build(sheet: Sheet) -> some View {
        switch sheet {
        case .photos:
            PhotosView()
            
        case .password:
            PasswordView()
        }
    }
    
    @ViewBuilder
    func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .photoScreen:
            PhotoScreenView()
        }
    }
}
