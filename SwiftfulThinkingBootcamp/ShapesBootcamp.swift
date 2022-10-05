//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/09.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .continuous)
//        Rectangle()
        RoundedRectangle(cornerRadius: 50)
//            .fill(.yellow)
//            .foregroundColor(.pink)
//            .stroke()
//            .stroke(.red)
//            .stroke(.blue, lineWidth: 10)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .square, dash: [20]))
//            .trim(from: 0.2, to: 1)
            .frame(width: 200, height: 100, alignment: .leading)
            
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
