//
//  Color + Extension.swift
//  artishow-poc
//
//  Created by Victor Castro on 27/04/23.
//

import SwiftUI

extension Color {
    
    static let colorBackground = Color("background")
    static let colorPrimary = Color("primary")
    static let colorSecondary = Color("secondary")
    static let colorTertiary = Color("tertiary")
    static let colorDark1 = Color("dark1")
    static let colorDark2 = Color("dark2")
    static let colorDark3 = Color("dark3")
    static let colorDark4 = Color("dark4")
    
    static let alertDanger = Color("danger")
    static let alertInfo = Color("info")
    static let alertSuccess = Color("success")
    static let alertSuccessfully = Color("successfully")
    static let alertWarning = Color("warning")
    
    static let socialFacebook = Color("facebook")
    static let socialGoogle = Color("google")
    static let socialApple = Color.black
    
    static var cRandom: Color {
        return Color(red: .random(in: 0...1),
                     green: .random(in: 0...1),
                     blue: .random(in: 0...1))
    }
}
