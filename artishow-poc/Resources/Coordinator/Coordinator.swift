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
        let pages: [Page: AnyView] = [
            .photos: AnyView(PhotosView()),
            .privateZone: AnyView(PrivateZoneView()),
            .publicZone: AnyView(PublicZoneView()),
            .login: AnyView(LoginView()),
            .register: AnyView(RegisterView()),
            .menuAccount: AnyView(AccountView()),
            .menuProfile: AnyView(ProfileView()),
        ]
        
        pages[page] ?? AnyView(EmptyView())
    }
    
    @ViewBuilder
    func build(sheet: Sheet) -> some View {
        let sheets: [Sheet: AnyView] = [
            .password: AnyView(PasswordView()),
        ]
        
        sheets[sheet] ?? AnyView(EmptyView())
    }
    
    @ViewBuilder
    func build(fullScreenCover: FullScreenCover) -> some View {
        let fullScreens: [FullScreenCover: AnyView] = [
            .photoScreen: AnyView(PhotoScreenView()),
        ]
        
        fullScreens[fullScreenCover] ?? AnyView(EmptyView())
    }
}
