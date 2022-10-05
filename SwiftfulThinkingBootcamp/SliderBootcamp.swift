//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/26.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    var colors: [Color] = [.red, .orange, .yellow, .green, .blue, Color(UIColor(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1))), .purple]
    
    var body: some View {
        VStack {
            
            Text("Rating: ")
            Text(
                //                "\(sliderValue)"
                String(format: "%.1f", sliderValue)
            )
            .foregroundColor(color)
            //            Slider(value: $sliderValue)
            //            Slider(value: $sliderValue, in: 1...5)
            //            Slider(value: $sliderValue, in: 1...5, step: 1)
            Slider(value: $sliderValue, in: 0...10, step: 1, label: {
                Text("Title")
            }, minimumValueLabel: {
                Text("1")
            }, maximumValueLabel: {
                Text("5")
            }, onEditingChanged: { _ in
                color = colors.randomElement() ?? .teal
            })
            .tint(.red)
            .padding(50)
            
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
