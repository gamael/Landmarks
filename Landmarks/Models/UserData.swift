//
//  UserData.swift
//  Landmarks
//
//  Created by Alejandro Agudelo on 18/04/20.
//  Copyright © 2020 Alejandro Agudelo. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
