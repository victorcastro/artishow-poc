//
//  AccountView.swift
//  artishow-poc
//
//  Created by Victor Castro on 26/04/23.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack {
            Text("username: victor@castro.com")
            Text("password: *******")
        }.navigationTitle("Account")
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
