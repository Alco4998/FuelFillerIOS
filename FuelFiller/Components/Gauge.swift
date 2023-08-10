//
//  Gauge.swift
//  FuelFiller
//
//  Created by Alexander Crew on 6/8/2023.
//

import Foundation
import SwiftUI

struct gauge: ProgressViewStyle {
    
    @State public var lineWidth = 10.0
    @State public var width = 300.0
    @State public var height = 300.0
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            Circle()
                .trim(from: 0.0, to: 0.75)
                .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                .rotation(Angle(degrees: 135))
                .foregroundColor(.gray)
            
            Circle()
                .trim(from: 0.0, to: 0.75 * (configuration.fractionCompleted ?? 0))
                .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                .rotation(Angle(degrees: 135))
            
            VStack {
                configuration.label
            }
        }
        .frame(width: width, height: height, alignment: .center)
        
    }
}
