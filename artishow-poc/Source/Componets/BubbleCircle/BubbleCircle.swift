//
//  BubbleCircle.swift
//  artishow-poc
//
//  Created by Victor Castro on 11/05/23.
//

import SwiftUI

struct BubbleCircle: View {
    
    var radio: CGFloat = 100
    
    var body: some View {
        Circle()
            .fill(Color.colorPrimary)
            .frame(width: radio, height: radio)
    }
}

struct BubbleCircle_Previews: PreviewProvider {
    static var previews: some View {
        BubbleCircle(radio: 400)
    }
}
