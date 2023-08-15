//
//  ContentView.swift
//  ColorApp_SwiftUI
//
//  Created by Сергей Захаров on 15.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var red = Double.random(in: 0...255).rounded()
    @State private var green = Double.random(in: 0...255).rounded()
    @State private var blue = Double.random(in: 0...255).rounded()
    
    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                ColorView(red: red, green: green, blue: blue)
                
                VStack {
                    ColorSliderView(value: $red, color: .red)
                    ColorSliderView(value: $green, color: .green)
                    ColorSliderView(value: $blue, color: .blue)
                }
                .frame(height: 150)
                Spacer()
            }
        }
        .padding()
        .background(Color(.systemCyan))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
