//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Alejandro Agudelo on 20/04/20.
//  Copyright © 2020 Alejandro Agudelo. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
                .padding(-60)
                .rotationEffect(angle, anchor: .bottom)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
