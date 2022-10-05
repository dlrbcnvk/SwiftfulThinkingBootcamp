//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by 조성규 on 2022/09/09.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is the Swiftful Thinking Bootcamp. I am really enjoying this course and learning alot")
//            .font(.body)
//            .fontWeight(.medium)
//            .bold()
//            .underline()
//            .underline(true, color: .red)
//            .strikethrough(true, color: .blue)
//            .italic()
//            .font(.system(size: 24, weight: .semibold, design: .monospaced))
//            .baselineOffset(10)
//            .kerning(1)
            .multilineTextAlignment(.leading)
            .foregroundColor(.orange)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
