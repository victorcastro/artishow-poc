//
//  Font + Extension.swift
//  artishow-poc
//
//  Created by Victor Castro on 27/04/23.
//

import SwiftUI

extension Font {
    enum ZenTokyoFont {
        case regular
        
        var value: String {
            switch self {
            case .regular:
                return "ZenTokyoZoo-Regular"
            }
        }
    }
    
    enum PoppinsFont {
        case blackItalic
        case black
        case extraBoldItalic
        case extraBold
        case boldItalic
        case bold
        case semiBoldItalic
        case semiBold
        case mediumItalic
        case medium
        case italic
        case regular
        case lightItalic
        case light
        case extraLightItalic
        case extraLight
        case thinItalic
        case thin
        
        var value: String {
            switch self {
            case .blackItalic:
                return "Poppins-BlackItalic"
            case .black:
                return "Poppins-Black"
            case .extraBoldItalic:
                return "Poppins-ExtraBoldItalic"
            case .extraBold:
                return "Poppins-ExtraBold"
            case .boldItalic:
                return "Poppins-BoldItalic"
            case .bold:
                return "Poppins-Bold"
            case .semiBoldItalic:
                return "Poppins-SemiBoldItalic"
            case .semiBold:
                return "Poppins-SemiBold"
            case .mediumItalic:
                return "Poppins-MediumItalic"
            case .medium:
                return "Poppins-Medium"
            case .italic:
                return "Poppins-Italic"
            case .regular:
                return "Poppins-Regular"
            case .lightItalic:
                return "Poppins-LightItalic"
            case .light:
                return "Poppins-Light"
            case .extraLightItalic:
                return "Poppins-ExtraLightItalic"
            case .extraLight:
                return "Poppins-ExtraLight"
            case .thinItalic:
                return "Poppins-ThinItalic"
            case .thin:
                return "Poppins-Thin"
            }
        }
    }
    
    static func zenTokyo(_ type: ZenTokyoFont, size: CGFloat = 14) -> Font {
        return .custom(type.value, size: size)
    }
    
    static func poppins(_ type: PoppinsFont, size: CGFloat = 14) -> Font {
        return .custom(type.value, size: size)
    }
}
