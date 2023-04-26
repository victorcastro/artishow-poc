//
//  RootViewController.swift
//  artishow-poc
//
//  Created by Victor Castro on 19/04/23.
//

import UIKit

final class Application_RootViewController {
    static var rootViewController: UIViewController {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else { return .init() }
        
        guard let root = screen.windows.first?.rootViewController else { return .init() }
        
        return root
    }
}
