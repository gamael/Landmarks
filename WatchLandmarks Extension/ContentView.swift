//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by Alejandro Agudelo on 17/05/20.
//  Copyright © 2020 Alejandro Agudelo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList { WatchLandmarkDetail(landmark: $0) }
        .environmentObject(UserData())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList { WatchLandmarkDetail(landmark: $0) }
                   .environmentObject(UserData())
    }
}
