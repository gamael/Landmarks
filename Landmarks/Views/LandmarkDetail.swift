//
//  LandmarkDetail.swift
//  Movies
//
//  Created by Alejandro Agudelo on 4/16/20.
//  Copyright © 2020 Alejandro Agudelo. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var userData: UserData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300.0)
                .edgesIgnoringSafeArea(.top)
            
            CircleImage(image: landmark.image)
                .padding(.bottom, -150.0)
                .offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/-150.0/*@END_MENU_TOKEN@*/)
            
            
            VStack(alignment: .leading, spacing: nil) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    Button(action: {
                                           self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                                       }) {
                                           if self.userData.landmarks[self.landmarkIndex].isFavorite {
                                               Image(systemName: "star.fill")
                                                   .foregroundColor(Color.yellow)
                                           } else {
                                               Image(systemName: "star")
                                                   .foregroundColor(Color.gray)
                                           }
                                       }
                }
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
