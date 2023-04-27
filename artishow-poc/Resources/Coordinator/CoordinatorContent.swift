//
//  CoordinatorEnums.swift
//  artishow-poc
//
//  Created by Victor Castro on 25/04/23.
//

import Foundation

enum Page: String, Identifiable {
    case publicZone, login, register
    case privateZone, photos
    case menuProfile, menuAccount
    
    var id: String { self.rawValue }
}

enum Sheet: String, Identifiable {
    case password
    
    var id: String { self.rawValue }
}

enum FullScreenCover: String, Identifiable {
    case photoScreen
    
    var id: String { self.rawValue }
}
