//
//  nextView.swift
//  MVVM Architecture
//
//  Created by Krishna Balaji on 9/27/24.
//

import SwiftUI

struct nextView: View {
    @ObservedObject var locationData : LocationData
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack
        {
            Spacer()
            TextField("Edit city", text: $locationData.city)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Edit State", text: $locationData.state)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Current Location: \(locationData.city), \(locationData.state)")
                .padding()
            Button("Save and Go Back") {
                path.removeLast() }
               .padding()
               .foregroundColor(.green)
               .border(Color.red, width: 3)
               .cornerRadius(10)
            
            Spacer()
          }
        .navigationTitle("Edit Location")
      }
}
