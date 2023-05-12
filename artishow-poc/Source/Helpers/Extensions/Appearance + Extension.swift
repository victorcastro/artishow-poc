//
//  UITabBarAppearance + Extension.swift
//  artishow-poc
//
//  Created by Victor Castro on 9/05/23.
//

import SwiftUI

extension UINavigationBarAppearance {
    static var customAppearance: UINavigationBarAppearance {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        appearance.backgroundColor = .clear
        appearance.titleTextAttributes = [.foregroundColor: UIColor(Color.colorPrimary)]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor(Color.colorPrimary), .font: UIFont(name: Font.PoppinsFont.bold.value, size: 26)!]
        appearance.buttonAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor(.colorDark1)]
        return appearance
    }
}

extension UITabBarAppearance {
    static var customAppearance: UITabBarAppearance {
        let appearance = UITabBarAppearance()
        appearance.configureWithDefaultBackground()
        appearance.backgroundColor = .white
        appearance.stackedLayoutAppearance.normal.iconColor = UIColor(.colorDark3)
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor(.colorDark3)]
        appearance.stackedLayoutAppearance.selected.iconColor = UIColor(Color.colorPrimary)
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor(.colorPrimary)]
        return appearance
    }
}
