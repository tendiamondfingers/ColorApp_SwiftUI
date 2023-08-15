//
//  ColorSliderView.swift
//  ColorApp_SwiftUI
//
//  Created by Сергей Захаров on 15.08.2023.
//

import SwiftUI

struct ColorSliderView: View {
    
    @Binding var value: Double
    @State private var text = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            Text(value.formatted())
                .frame(width: 35, alignment: .leading)
                .foregroundColor(.white)
            
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: value) { newValue in
                    text = newValue.formatted()
                }
        }
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            ColorSliderView(value: .constant(100), color: .red)
        }
    }
}
