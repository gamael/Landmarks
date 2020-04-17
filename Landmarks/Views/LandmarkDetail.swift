//
//  LandmarkDetail.swift
//  Movies
//
//  Created by Alejandro Agudelo on 4/16/20.
//  Copyright © 2020 Alejandro Agudelo. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300.0)
                .edgesIgnoringSafeArea(.top)
            
            CircleImage(image: landmark.image)
                .padding(.bottom, -150.0)
                .offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/-150.0/*@END_MENU_TOKEN@*/)
            
            
            VStack(alignment: .leading, spacing: nil) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                Spacer()
            
            }.padding()
        }
        .navigationBarTitle(Text(landmark.name))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
