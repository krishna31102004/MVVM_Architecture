//
//  ContentView.swift
//  MVVM Architecture
//
//  Created by Krishna Balaji on 9/27/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationData = LocationData()
    @State var path = NavigationPath()
    @State var tempCity: String = ""
    @State var tempState: String = ""
    var body: some View {
        NavigationStack(path: $path){
            VStack
            {
                Spacer()
                TextField("Enter city", text: $tempCity)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Enter State", text: $tempState)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("Current Location: \(locationData.city), \(locationData.state)")
                    .padding()
                Button("Add My Location") {
                    locationData.city = tempCity
                    locationData.state = tempState
                }
                 .padding()
                 .foregroundColor(.green)
                 .border(Color.red, width: 3)
                 .cornerRadius(10)
                
                NavigationLink("Go to Edit Location", value: 1)
                    .padding()
                    .navigationDestination(for: Int.self) { hello in
                        nextView(locationData: locationData, path: $path)
                    }
                Spacer()
            }
            .navigationTitle("Main View")
        }
    }
}
