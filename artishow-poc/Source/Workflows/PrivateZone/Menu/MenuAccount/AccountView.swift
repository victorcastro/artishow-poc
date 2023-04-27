//
//  AccountView.swift
//  artishow-poc
//
//  Created by Victor Castro on 26/04/23.
//

import SwiftUI

struct MenuAccountView: View {
    var body: some View {
        VStack {
            Text("username: victor@castro.com")
            Text("password: *******")
        }.navigationTitle("Account")
    }
}

struct MenuAccountView_Previews: PreviewProvider {
    static var previews: some View {
        MenuAccountView()
    }
}
