//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/09.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                .red
                LinearGradient(
                    gradient: Gradient(colors: [Color(UIColor(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))), .blue]),
                    startPoint: .top,
                    endPoint: .trailing)
//                RadialGradient(gradient: Gradient(colors: [Color(UIColor(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))), Color(UIColor(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))]), center: .center, startRadius: 5, endRadius: 200)
//                AngularGradient(gradient: Gradient(colors: [.red, .yellow]), center: .center, angle: .degrees(225))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
