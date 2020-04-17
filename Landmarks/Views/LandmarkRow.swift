//
//  LandmarkRow.swift
//  Movies
//
//  Created by Alejandro Agudelo on 17/04/20.
//  Copyright © 2020 Alejandro Agudelo. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack {
            HStack {
                landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                Text(landmark.name)
                Spacer()
            }
        }
    }
}

struct LandMarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
