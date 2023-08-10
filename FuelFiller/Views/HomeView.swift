//
//  HomeView.swift
//  FuelFiller
//
//  Created by Alexander Crew on 6/8/2023.
//

import SwiftUI

struct HomeView: View {
    @State private var SliderValue = 80.0
    var body: some View {
        VStack {
            HStack {
                ProgressView("Cost", value: SliderValue / 100)
                    .progressViewStyle(
                        gauge(lineWidth: 10, width: 100, height: 100)
                    )
                    .padding(.horizontal, 5)
                
                ProgressView("Eco", value: SliderValue / 100)
                    .progressViewStyle(
                        gauge(lineWidth: 10, width: 100, height: 100)
                    )
                    .padding(.horizontal, 5)
                
                ProgressView("Tank", value: SliderValue / 100)
                    .progressViewStyle(
                        gauge(lineWidth: 10, width: 100, height: 100)
                    )
                    .padding(.horizontal, 5)
            }.fixedSize()
            
        Slider(value: $SliderValue, in: 0...100, label: {
            Text("Cost")
        })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewInterfaceOrientation(.portrait)
    }
}
