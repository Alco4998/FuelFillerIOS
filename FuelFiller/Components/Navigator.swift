//
//  Navigator.swift
//  FuelFiller
//
//  Created by Alexander Crew on 6/8/2023.
//

import SwiftUI

struct Navigator: View {
    @State var pageIndex = 1
    
    var body: some View {
        VStack {
            TabView(selection: $pageIndex) {
                SettingsView().tag(0)
                HomeView().tag(1)
                InsertView().tag(2)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
        .background(.gray)
        .padding(.all)
    }
}

struct Navigator_Previews: PreviewProvider {
    static var previews: some View {
        Navigator()
    }
}
