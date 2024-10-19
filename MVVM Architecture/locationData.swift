//
//  locationData.swift
//  MVVM Architecture
//
//  Created by Krishna Balaji on 9/27/24.
//

import Foundation

class LocationData: ObservableObject {
    @Published var city: String = ""
    @Published var state: String = ""
}


