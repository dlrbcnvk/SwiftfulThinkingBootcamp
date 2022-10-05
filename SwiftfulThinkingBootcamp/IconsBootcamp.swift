//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/18.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "desktopcomputer.trianglebadge.exclamationmark")
            .renderingMode(.original)
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
//            .scaledToFill()
//            .font(.title)
            .font(.system(size: 20))
            .foregroundColor(.brown)
            .frame(width: 200, height: 200, alignment: .center)
//            .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
