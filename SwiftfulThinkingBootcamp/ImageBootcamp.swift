//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/18.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("maplestory")
            .renderingMode(.original)
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
//            .scaledToFill()
            .frame(width: 100, height: 100)
//            .clipped()
//            .cornerRadius(50)
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 25)
//                Ellipse()
//            )
            
        
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
