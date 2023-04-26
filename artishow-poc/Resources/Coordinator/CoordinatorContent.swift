//
//  CoordinatorEnums.swift
//  artishow-poc
//
//  Created by Victor Castro on 25/04/23.
//

import Foundation

enum Page: String, Identifiable {
    case login, register        // Public Zone
    case privateZone            // Private Zone
    
    var id: String {
        self.rawValue
    }
}

enum Sheet: String, Identifiable {
    case password           // Public Zone
    case photos             // Private Zone
    
    var id: String {
        self.rawValue
    }
}

enum FullScreenCover: String, Identifiable {
    case photoScreen        // Private Zone
    
    var id: String {
        self.rawValue
    }
}
